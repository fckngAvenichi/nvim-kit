-- Fuzzy finder
return {
	'nvim-telescope/telescope.nvim',
	lazy = false,
	branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'BurntSushi/ripgrep',
		'sharkdp/fd',
		'nvim-tree/nvim-web-devicons',
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build", },
	},
	config = function ()
		require('telescope').setup({
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = 'smart_case',
				}
			}
		})

		require('telescope').load_extension('fzf');

		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fg', builtin.grep_string, {})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
		vim.keymap.set('n', '<leader>fw', builtin.current_buffer_fuzzy_find, {})
	end
}
