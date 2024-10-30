local opt = vim.opt

-- Line Numbers
opt.relativenumber = true
opt.number = true
opt.numberwidth = 4

-- Indentations & Tabs
opt.autoindent = true
opt.smartindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = false

-- Search Settings
opt.ignorecase = true
opt.smartcase = true

-- Disable mouse while in nvim
opt.mouse = ''

-- Highlihgt Active Line
opt.cursorline = true

-- Clopboard
opt.clipboard:append("unnamedplus")

-- Split Window
opt.splitright = true
opt.splitbelow = true
