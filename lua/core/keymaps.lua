local keymap = vim.keymap

-- General
keymap.set('n', '<leader>wq', ':wq<CR>') -- Save and quit
keymap.set('n', '<leader>qq', ':q!<CR>') -- Quit without saving
keymap.set('n', '<leader>ww', ':w<CR>') -- Save

-- Split Window
keymap.set('n', '<leader>sv', ':vs<CR>') -- Split vertically
keymap.set('n', '<leader>sh', ':sp<CR>') -- Split horizontally

-- Tab Management
keymap.set('n', '<leader>to', ':tabnew<CR>') -- New tab
keymap.set('n', '<leader>tc', ':tabclose<CR>') -- Close tab
keymap.set('n', '<leader>tn', ':tabn<CR>') -- Next tab
keymap.set('n', '<leader>tp', ':tabp<CR>') -- Previouse tab
