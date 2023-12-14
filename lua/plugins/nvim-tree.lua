-- File Explorer
return {
	-- https://github.com/nvim-tree/nvim-tree.lua
	'nvim-tree/nvim-tree.lua',
	dependencies = {
		-- https://github.com/nvim-tree/nvim-web-devicons
		'nvim-tree/nvim-web-devicons', -- Optional icons for tree
	},
	config = function ()
		-- Recommended setting to disable default netrw esprlorer
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		vim.g.termguicolors = true

		require('nvim-tree').setup({
			renderer = {
				icons = {
					glyphs = {
						git = {
							unstaged = '✗',
							staged = '✓',
							unmerged = '?',
							renamed = 'rn',
							untracked = '+',
							deleted = '-',
							ignored = '.',
						}
					}
				}
			}
		})

		require('nvim-web-devicons').setup()

		-- Remaps
		vim.keymap.set('n', '<leader><tab>', ':NvimTreeToggle<CR>', {})
	end
}
