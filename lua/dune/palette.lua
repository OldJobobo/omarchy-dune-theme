local M = {}

local defaults = {
	accent = "#f28a2e",
	cursor = "#bf9b6f",
	foreground = "#bf9b6f",
	background = "#000000",
	selection_foreground = "#000000",
	selection_background = "#f28a2e",
	color0 = "#000000",
	color1 = "#d94b18",
	color2 = "#d98b48",
	color3 = "#f29d35",
	color4 = "#f28a2e",
	color5 = "#1f4e5b",
	color6 = "#bf6341",
	color7 = "#bf9b6f",
	color8 = "#4a2d30",
	color9 = "#d94b18",
	color10 = "#d98b48",
	color11 = "#f29d35",
	color12 = "#f28a2e",
	color13 = "#49afc4",
	color14 = "#bf6341",
	color15 = "#f2e85c",
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
