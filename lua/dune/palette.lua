local M = {}

local defaults = {
	accent = "#c86a24",
	cursor = "#d1b38a",
	foreground = "#d1b38a",
	background = "#120d0a",
	selection_foreground = "#e08a2e",
	selection_background = "#3a2a20",
	color0 = "#120d0a",
	color1 = "#8e2f22",
	color2 = "#7f6a46",
	color3 = "#b88a42",
	color4 = "#c86a24",
	color5 = "#3c8f95",
	color6 = "#8a5e3b",
	color7 = "#d1b38a",
	color8 = "#3a2a20",
	color9 = "#b24a22",
	color10 = "#9a8457",
	color11 = "#d2a25a",
	color12 = "#e08a2e",
	color13 = "#58b8c2",
	color14 = "#a87448",
	color15 = "#f0ddba",
}

local function dirname(path)
	return path:match("^(.*)/[^/]+$")
end

local function repo_root()
	local source = debug.getinfo(1, "S").source:sub(2)
	return dirname(dirname(dirname(source)))
end

local function read_colors_toml()
	local path = repo_root() .. "/colors.toml"
	local fd = io.open(path, "r")
	if not fd then
		return {}
	end

	local raw = {}
	for line in fd:lines() do
		local key, value = line:match('^([%w_]+)%s*=%s*"(#%x+)"')
		if key and value then
			raw[key] = value
		end
	end
	fd:close()
	return raw
end

function M.raw()
	return vim.tbl_extend("force", defaults, read_colors_toml())
end

function M.semantic(opts)
	opts = opts or {}
	local raw = M.raw()

	local palette = {
		bg = opts.transparent and "NONE" or raw.background,
		bg_dark = raw.color0,
		bg_alt = raw.color8,
		bg_highlight = raw.color8,
		bg_visual = raw.selection_background,
		bg_status = raw.color0,
		bg_float = opts.transparent and "NONE" or raw.color0,
		bg_popup = opts.transparent and "NONE" or raw.color0,
		fg = raw.foreground,
		fg_bright = raw.color15,
		fg_muted = raw.color6,
		fg_subtle = raw.color8,
		comment = raw.color8,
		comment_alt = raw.color6,
		border = raw.color8,
		border_bright = raw.color6,
		accent = raw.accent,
		accent_alt = raw.color3,
		red = raw.color1,
		red_dim = raw.color9,
		orange = raw.color6,
		yellow = raw.color11,
		green = raw.color2,
		green_dim = raw.color10,
		blue = raw.color5,
		blue_alt = raw.color13,
		magenta = raw.color6,
		purple = raw.color5,
		cyan = raw.color5,
		cyan_dim = raw.color13,
		selection_fg = raw.selection_foreground,
		selection_bg = raw.selection_background,
		cursor = raw.cursor,
	}

	palette.none = "NONE"
	palette.raw = raw
	return palette
end

return M
