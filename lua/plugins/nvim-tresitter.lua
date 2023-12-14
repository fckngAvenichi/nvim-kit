-- Syntax Highlighting
return {
	-- https://github.com/nvim-treesitter/nvim-treesitter
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	dependencies = {
		-- Autoclose tags and other
		-- https://github.com/windwp/nvim-ts-autotag
		{ 'windwp/nvim-ts-autotag' },
	},
	config = function ()
			require('nvim-treesitter.configs').setup({
				ensure_installed = { 'lua', 'html', 'css', 'scss', 'javascript', 'typescript', 'tsx' },
				higlight = { enable = true },
				indent = { enable = true },
				autotag = { enable = true },
			})
		end,
}
