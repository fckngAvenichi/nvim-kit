-- Status Line
return {
	-- https://github.com/nvim-lualine/lualine.nvim
	'nvim-lualine/lualine.nvim',
	opts = {
		options = {
			theme = 'tokyonight',
		},
		sections = {
			lualine_x = { 'filetype' }
		}
	},
	config = function (_, opts)
		require('lualine').setup(opts)
	end
}
