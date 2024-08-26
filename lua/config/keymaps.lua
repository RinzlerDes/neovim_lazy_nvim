vim.g.mapleader = " "
vim.g.maplocalleader = " "

Keymap = vim.keymap

-- Directory Nav
Keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", {noremap = true})
Keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {noremap = true})


-- -- Tab nav
-- Keymap.set("n", "[t", ":tabprev<CR>", {noremap = true})
-- Keymap.set("n", "]t", ":tabnext<CR>", {noremap = true})

-- Buffer Nav
Keymap.set("n", "<Tab>", ":bnext<CR>", {noremap = true})
Keymap.set("n", "<S-Tab>", ":bprevious<CR>", {noremap = true})
Keymap.set("n", "<C-x>", ":bd|bnext<CR>")

-- Pane Nav
-- Keymap.set("n", "<C-h>", "<C-w>h", {noremap = true}) -- Left
-- Keymap.set("n", "<C-i>", "<C-w>i", {noremap = true}) -- Split Vertical
-- Keymap.set("n", "<C-h>", "<C-w>h", {noremap = true}) -- Split Vertical
-- Keymap.set("n", "<C-h>", "<C-w>h", {noremap = true}) -- Split Vertical

-- Window Management
Keymap.set("n", "<leader>sv", ":vsplit<CR>", {noremap = true}) -- Split Vertical
Keymap.set("n", "<leader>sh", ":split<CR>", {noremap = true}) -- Split Horizonlally
Keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", {noremap = true}) -- Toggle Minimize
Keymap.set("n", "<C-Right", "<C-w>l", {noremap = true}) -- Move to right window
Keymap.set("n", "<C-Left", "<C-w>h", {noremap = true}) -- Move to left window

-- Comments     
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", {noremap = false})
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", {noremap = false})

-- Indenting
Keymap.set("v", "<", "<gv", {noremap = false})
Keymap.set("v", ">", ">gv", {noremap = false})

-- Exiting terminal mode
Keymap.set("t", "<ESC><ESC>", "<C-\\><C-n>", {noremap = true})

-- Navigating tab menu in command line
-- Map Up arrow to behave like Ctrl+P (previous match) in command-line mode
vim.api.nvim_set_keymap('c', '<Up>', '<C-p>', { noremap = true })
-- Map Down arrow to behave like Ctrl+N (next match) in command-line mode
vim.api.nvim_set_keymap('c', '<Down>', '<C-n>', { noremap = true })

