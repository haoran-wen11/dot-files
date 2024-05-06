vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Enable auto format
vim.g.autoformat = true

local opt = vim.opt

-- line number
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.smartindent = true
opt.shiftround = true
opt.expandtab = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

-- display
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.wrap = false

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true
opt.splitbelow = true
opt.splitkeep = "screen"

-- undo
opt.undofile = true
