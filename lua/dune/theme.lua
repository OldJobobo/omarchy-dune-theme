local palette = require("dune.palette")
local editor = require("dune.groups.editor")
local syntax = require("dune.groups.syntax")
local plugins = require("dune.groups.plugins")

local M = {}

local defaults = {
  transparent = false,
  italic_comments = true,
  dim_inactive = false,
  terminal_colors = true,
  overrides = {},
}

local options = vim.deepcopy(defaults)

local function merge_groups(...)
  local merged = {}
  for _, groups in ipairs({ ... }) do
    merged = vim.tbl_extend("force", merged, groups)
  end
  return merged
end

local function apply(group_defs)
  for group, spec in pairs(group_defs) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

local function set_terminal_colors(raw)
  for i = 0, 15 do
    vim.g["terminal_color_" .. i] = raw["color" .. i]
  end
end

function M.setup(opts)
  options = vim.tbl_deep_extend("force", {}, defaults, opts or {})
end

function M.groups()
  local c = palette.semantic(options)
  local group_defs = merge_groups(
    editor.get(c, options),
    syntax.get(c, options),
    plugins.get(c, options),
    options.overrides or {}
  )

  if options.dim_inactive then
    group_defs.NormalNC = { fg = c.comment_alt, bg = c.bg }
  end

  return c, group_defs
end

function M.load()
  local c, group_defs = M.groups()

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "dune"

  if options.terminal_colors then
    set_terminal_colors(c.raw)
  end

  apply(group_defs)
end

return M
