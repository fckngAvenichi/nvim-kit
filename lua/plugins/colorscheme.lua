-- Colorscheme
return {
	-- https://github.com/folke/tokyonight.nvim
	'folke/tokyonight.nvim',
	lazy = false,
	priority = 1000,
	opts = {},
	config = function (_, opts)
		require('tokyonight').setup(opts)
		vim.cmd('colorscheme tokyonight')
	end
}
