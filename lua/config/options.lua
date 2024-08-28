local opt = vim.opt

-- Tab / Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
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

-- Function to set tab width
local function set_tab_width(tab_width)
    vim.opt.tabstop = tab_width
    vim.opt.shiftwidth = tab_width
    vim.opt.softtabstop = tab_width
    vim.opt.expandtab = true -- Convert tabs to spaces
end

-- Autocommand for specific filetypes
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        set_tab_width(4) -- Set tab width to 2 for JavaScript files
    end
})
