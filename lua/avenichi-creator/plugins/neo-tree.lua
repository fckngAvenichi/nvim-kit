-- File tree
return {
	'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
  	'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
  	'MunifTanjim/nui.nvim',
  },
	config = function ()
		require('neo-tree').setup({
			default_component_configs = {
				git_status = {
					symbols = {
						-- Modification Type
						added			= "new",
						deleted		= "del",
						modified	= "mod",
						renamed		= "ren",
						-- Status Type
						untracked = "?",
						ignored		= "◌",
						unstaged	= "✕",
						staged		= "✓",
						conflict	= "!"
					}
				}
			}
		})

		vim.keymap.set('n', '<leader><tab>', ':Neotree toggle<CR>', {})
	end
}
