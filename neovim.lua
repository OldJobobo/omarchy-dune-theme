return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#000000",
                bg_dark = "#000000",
                bg_highlight = "#2e1b1e",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#bf9b6f",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#bf9b6f",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#2e1b1e",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#d94b18",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#d94b18",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#f29d35",
                -- green: Comments, strings, success states, git additions
                green = "#d98b48",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#bf6341",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#f28a2e",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#1f4e5b",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#49afc4",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
