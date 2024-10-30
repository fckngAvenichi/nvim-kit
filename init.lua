-- Modules that are not hanlded by lazy
require('avenichi-creator.core');

-- Install lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Install plugins
require('lazy').setup('avenichi-creator.plugins', {
	change_detection = {
		enabled = true,
		notify = false,
	},
})
