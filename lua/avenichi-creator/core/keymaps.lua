-- Initialize leader key
vim.g.mapleader = ' '

local keymap = vim.keymap

-- General
keymap.set('n', '<leader>wq', ':wq<CR>') -- Save and quit
keymap.set('n', '<leader>qq', ':q!<CR>') -- Quit without saving
keymap.set('n', '<leader>ww', ':w<CR>')  -- Save
keymap.set('n', '<leader>ee', ':e<CR>')  -- Edit

-- Split Window
keymap.set('n', '<leader>wsv', ':vs<CR>')   -- Split vertically
keymap.set('n', '<leader>wsh', ':sp<CR>')   -- Split horizontally
keymap.set('n', '<leader>wj', '<C-w>j<CR>') -- Move cursor to bottom window
keymap.set('n', '<leader>wk', '<C-w>k<CR>') -- Move cursor to upper window
keymap.set('n', '<leader>wl', '<C-w>l<CR>') -- Move cursor to right window
keymap.set('n', '<leader>wh', '<C-w>h<CR>') -- Move cursor to left window

-- Tab Management
keymap.set('n', '<leader>to', ':tabnew<CR>')   -- New tab
keymap.set('n', '<leader>tc', ':tabclose<CR>') -- Close tab
keymap.set('n', '<leader>tn', ':tabn<CR>')     -- Next tab
keymap.set('n', '<leader>tp', ':tabp<CR>')     -- Previouse tab
