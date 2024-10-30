-- Status Line
return {
	'nvim-lualine/lualine.nvim',
	opts = {
		options = {
			theme = 'tokyonight',
		},
		sections = {
			lualine_x = { 'filetype' }
		}
	},
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function(_, opts)
		require('lualine').setup(opts)
	end
}

