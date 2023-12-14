-- Quick access files
return {
	-- https://github.com/ThePrimeagen/harpoon/tree/harpoon2
	'ThePrimeagen/harpoon',
	branch = 'harpoon2',
	dependenies = {
		-- https://github.com/nvim-lua/plenary.nvim
		{ 'nvim-lua/plenary' },
	},
	config = function ()
		local harpoon = require('harpoon')

		harpoon.setup()

		-- Remap
		vim.keymap.set('n', '<leader>ha', function () harpoon:list():append() end)
		vim.keymap.set('n', '<leader>ht', function () harpoon.ui:toggle_quick_menu(harpoon:list()) end)
		vim.keymap.set('n', '<leader>h1', function () harpoon:list():select(1) end)
		vim.keymap.set('n', '<leader>h2', function () harpoon:list():select(2) end)
		vim.keymap.set('n', '<leader>h3', function () harpoon:list():select(3) end)
		vim.keymap.set('n', '<leader>h4', function () harpoon:list():select(4) end)
	end
}
