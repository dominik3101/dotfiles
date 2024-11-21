-- Bootstrap lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" -- Sets 'lazypath' variable to '/home/{$USER}/.local/share/nvim/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then -- Downloads lazy.nvim to lazypath if NOT present
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim

require("lazy").setup({
	spec = {
		-- Import plugins
		{ import = "plugins" },
	},
	-- Colorscheme used when installing plugins
	install = { colorscheme = { "gruvbox" } },
	-- Automatically check for plugin updates
	checker = { enabled = true},
})
