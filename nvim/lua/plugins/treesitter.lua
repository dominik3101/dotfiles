return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    opts = {
            -- All named parsers will always be installed
            ensure_installed = { "c", "lua", "vim", "vimdoc", "rust", "bash" },
            -- Automatically install missing parsers when entering a buffer
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
            incremental_selection = { 
                enable = true, 
                init_selection = "<Leader>ss",
                node_incremental = "<Leader>ni",
                scope_incremental = "<Leader>si",
                node_decremental = "<Leader>nd",
            },
        }

    }
