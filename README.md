# Dune Neovim Colorscheme

This theme repo now ships a standalone Neovim colorscheme plugin.

## Structure

- `colors/dune.lua`: colorscheme entrypoint for `:colorscheme dune`
- `lua/dune/palette.lua`: loads `colors.toml` and derives semantic roles
- `lua/dune/theme.lua`: setup, terminal colors, and highlight application
- `lua/dune/groups/*.lua`: built-in UI, syntax, Treesitter/LSP, and plugin groups

## Omarchy Wiring

The local [neovim.lua](/home/oldjobobo/Projects/themes/omarchy-dune-theme/neovim.lua) spec points Lazy at the active Omarchy theme directory:

```lua
dir = vim.fn.expand("~/.config/omarchy/current/theme")
```

That lets the theme load as a local plugin without publishing a separate repo first.

## Options

```lua
require("dune").setup({
  transparent = false,
  italic_comments = true,
  dim_inactive = false,
  terminal_colors = true,
  overrides = {},
})
```

## Manual Test

```vim
:colorscheme dune
```
