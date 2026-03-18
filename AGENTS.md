# Repository Guidelines - Omarchy Dune Theme

## Project Overview
This is an Omarchy theme repository containing desktop configuration files for Hyprland, Waybar, Foot, and other Linux desktop apps. The theme is inspired by Frank Herbert's Dune.

## Project Structure
```
.
├── hyprland.conf          # Hyprland window manager config
├── waybar.css             # Waybar status bar styling
├── foot.ini               # Foot terminal config
├── gtk.css                # GTK theming
├── mako.ini               # Mako notification daemon
├── kitty.conf             # Kitty terminal config
├── ghostty.conf           # Ghostty terminal config
├── alacritty.toml         # Alacritty terminal config
├── colors.css             # Shared CSS color variables
├── colors.toml            # Color palette in TOML format
├── backgrounds/           # Wallpaper images (Dune-themed)
├── aether.*               # Aether tokenized theme files
├── vencord.theme.css      # Discord/Vencord theme
├── neovim.lua             # Neovim colorscheme
├── btop.theme             # btop theme
├── wofi.css               # Wofi launcher styling
├── walker.css             # Walker app launcher styling
└── swayosd.css            # SwayOSD styling
```

## Build, Test, and Development Commands

### Validation
This is a configuration-only repository. No build system or automated tests exist.

- **Shell syntax check**: `bash -n <script>` to validate any shell scripts
- **JSONC validation**: Waybar config files use JSONC - ensure valid JSON structure
- **TOML validation**: `toml-validate <file>` for TOML files (if available)

### Local Development
1. Edit files in place in this repository
2. Apply changes to live system:
   - Hyprland: `hyprctl reload` (auto-reloads on config save)
   - Waybar: `omarchy-restart-waybar`
   - Terminals: `omarchy-restart-terminal`
   - Mako: `omarchy-restart-mako` or `pkill -HUP mako`

### Installation
Install as an Omarchy theme:
```bash
omarchy-theme-install https://github.com/OldJobobo/omarchy-dune-theme
```

Or symlink manually:
```bash
ln -s /home/oldjobobo/Projects/themes/omarchy-dune-theme ~/.config/omarchy/themes/dune
omarchy-theme-set dune
```

## Code Style Guidelines

### General Principles
- Do not reformat unrelated sections when editing
- Preserve existing formatting within each file type
- Keep changes focused and minimal

### Config File Conventions

#### Hyprland (hyprland.conf)
- Indentation: 4 spaces inside blocks
- Variables: `$variableName = value`
- Sections: `section { ... }` with contents indented
- Comments: `# comment` on own line or after config
- Colors: Use rgba() for gradients, rgb() for solid colors
- Gradients: `rgba(color1) rgba(color2) ...` space-separated

#### CSS Files (gtk.css, waybar.css, etc.)
- Standard CSS syntax
- CSS custom properties for theming (@define-color)
- 2-4 space indentation

#### TOML Files (colors.toml, alacritty.toml)
- Standard TOML syntax
- 2 space indentation for nested structures

#### Terminal Configs (kitty.conf, ghostty.conf, foot.ini)
- INI-style or key = value format
- Preserve existing style and comments

### Color Conventions
- Use the shared palette defined in colors.css/colors.toml
- Format: `#RRGGBB` or `rgba(R, G, B, A)` or hex with alpha like `rgba(f28a2eff)`
- When adding colors, follow the Dune aesthetic (warm oranges, sandy yellows, desert reds, teal accents)

### Naming Conventions
- Files: lowercase with hyphens for multi-word names (e.g., `foot.ini`, `waybar.css`)
- Wallpapers: descriptive, lowercase (e.g., `01-dune.jpg`, `paul-atreides.png`)
- Variables: `$camelCase` or `$lowercase` following existing pattern
- Comments: descriptive, explain "why" not "what"

### Error Handling
- For config files: validate syntax before committing
- For shell scripts: use `bash -n` to check for parse errors
- Document any known limitations or required dependencies

## Testing Guidelines

### Visual Testing
- No automated tests exist
- Verify changes visually in the target application
- Test across multiple apps that use the theme (terminals, waybar, GTK apps)

### Manual Validation Checklist
- [ ] Hyprland reloads without errors: `hyprctl reload`
- [ ] Waybar restarts cleanly: `omarchy-restart-waybar`
- [ ] Terminals render colors correctly
- [ ] Window borders display gradient animation properly
- [ ] GTK apps (GTK3/GTK4) use correct colors

## Commit & Pull Request Guidelines

### Commit Messages
- Short, imperative subject (e.g., "add Paul's Vision border gradient")
- Optional scope prefix for multi-file changes (e.g., "hyprland:", "colors:")
- Body only if detailed explanation needed

### Pull Requests
- List all files changed and why
- Include screenshots for UI/visual changes
- Document any new dependencies or requirements
- Test on live Omarchy system before submitting

### What to Include in Changes
- Updated config files
- New wallpapers (add to backgrounds/ with descriptive names)
- Documentation updates if behavior changes
- README updates if adding new apps or features
