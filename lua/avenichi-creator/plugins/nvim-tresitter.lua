-- Syntax highliht
return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	dependencies = {
		'windwp/nvim-ts-autotag',
	},
	config = function ()
		require('nvim-treesitter.configs').setup({
			ensure_installed = { 'lua', 'gitignore', 'json', 'html', 'css', 'javascript', 'tsx' },
			sync_install = false,
			higlight = { enable = true },
			indent = { enable = true },
		})

		require('nvim-ts-autotag').setup({})
	end,
}
