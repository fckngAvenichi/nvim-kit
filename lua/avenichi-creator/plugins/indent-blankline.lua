-- Vusual indentation
return {
	'lukas-reineke/indent-blankline.nvim',
	main = 'ibl',
	opts = { indent = { char = '┆' } },
	config = function(_, opts)
		return require('ibl').setup(opts)
	end,
}

