vim.o.nu = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.signcolumn = "yes"
vim.o.undofile = true
vim.o.autoread = true
vim.o.laststatus = 3
vim.o.cmdheight = 0
vim.o.expandtab = true -- Convert tabs to spaces
vim.o.wrap = false
vim.o.inccommand = "split"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.winborder = "rounded"
vim.o.confirm = true

-- Enable break indent
vim.o.breakindent = true
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.smartcase = true
vim.o.autoindent = true

vim.o.ignorecase = true

-- Save undo history
vim.o.undofile = true
vim.o.undodir = vim.fn.stdpath("data") .. "/undodir" -- os.getenv("HOME") .. "/.local/state/nvim/undodir"

vim.o.cursorline = true

vim.o.hlsearch = true

vim.o.hlsearch = true

vim.o.completeopt = "menuone,noselect,fuzzy,nosort"
-- vim.o.shortmess:append("c")
-- vim.o.clipboard:append("unnamedplus")
-- vim.o.isfname:append("@-@")
vim.o.guicursor = ""
vim.o.scrolloff = 8
vim.o.colorcolumn = "0"
vim.o.termguicolors = true
