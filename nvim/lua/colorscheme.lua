require("gruvbox").setup({
    terminal_colors = true, -- add neovim terminal colors
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = true,
        folds = true,
    },
    strikethrough = true,
    invert_selection = true,
    invert_signs = true,
    invert_tabline = true,
    invert_intend_guides = true,
    inverse = true, --invert background for search, diffs, statuslines and errors
    contrast = "", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    dim_inactive = false,
    transparent_mode = true,
})
vim.cmd("colorscheme gruvbox")