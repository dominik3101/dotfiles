return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        local configs = require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "rust", "bash" },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
            incremental_selection = { 
                enable = true,
                keymaps = {
                    init_selection = "<Leader>ss",
                    node_incremental = "<Leader>ni",
                    scope_incremental = "<Leader>si",
                    node_decremental = "<Leader>nd",
                },
            },
        })
    end
}
