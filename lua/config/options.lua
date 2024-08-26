local opt = vim.opt

-- Tab / Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = true


-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
--opt.hlsearch = false

-- Appearence
opt.number = true
opt.termguicolors = true
--opt.colorcolumn = '100'
opt.signcolumn = 'yes'
opt.scrolloff = 10

-- Behavior
opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true
opt.splitright = true
opt.splitbelow = true
opt.encoding = "UTF-8"

