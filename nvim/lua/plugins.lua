-- Downloads lazy.nvim if not present in defined path

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" -- Sets local lazypath variable, which consists of nvim's data directory and '/lazy/lazy.nvim' added to the end
if not vim.loop.fs_stat(lazypath) then -- Checks if lazy.nvim is NOT inside lazypath
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Runs setup, downloads and enables specified plugins

require("lazy").setup({
    {
        "rebelot/kanagawa.nvim",
        config = function() -- This prevents lazy from executing the command below before the plugin is installed
            vim.cmd.colorscheme("kanagawa-wave")          
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "css", "jsonc", "toml", "hyprlang", "bash" },

                auto_install = true,

                highlight = {
                    enable = true,
                },
            })
        end,
    },

})

vim.filetype.add({
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})
