-- File finder
return {
	-- https://github.com/nvim-telescope/telescope.nvim
	'nvim-telescope/telescope.nvim',
	lazy = false,
	branch = '0.1.x',
	dependencies = {
		-- https://github.com/nvim-lua/plenary.nvim
		{ 'nvim-lua/plenary.nvim' },
	},
	config = function ()
		require('telescope').setup()

		-- Remaps
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
		vim.keymap.set('n', '<leader>fw', builtin.current_buffer_fuzzy_find, {})
	end
}
