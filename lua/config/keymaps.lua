vim.g.mapleader = " "
vim.g.maplocalleader = " "

Keymap = vim.keymap

-- Movement
Keymap.set("n", "j", "<Left>", {noremap = true})
Keymap.set("n", "l", "<Right>", {noremap = true})
Keymap.set("n", "h", "<Up>", {noremap = true})
Keymap.set("n", "k", "<Down>", {noremap = true})
Keymap.set("v", "j", "<Left>", {noremap = true})
Keymap.set("v", "l", "<Right>", {noremap = true})
Keymap.set("v", "h", "<Up>", {noremap = true})
Keymap.set("v", "k", "<Down>", {noremap = true})

-- Directory Nav
Keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", {noremap = true})
Keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {noremap = true})

-- Tab nav
Keymap.set("n", "[t", ":tabprev<CR>", {noremap = true})
Keymap.set("n", "]t", ":tabnext<CR>", {noremap = true})

-- Pane Nav
-- Keymap.set("n", "<C-h>", "<C-w>h", {noremap = true}) -- Left
-- Keymap.set("n", "<C-i>", "<C-w>i", {noremap = true}) -- Split Vertical
-- Keymap.set("n", "<C-h>", "<C-w>h", {noremap = true}) -- Split Vertical
-- Keymap.set("n", "<C-h>", "<C-w>h", {noremap = true}) -- Split Vertical

-- Window Management
Keymap.set("n", "<leader>sv", ":vsplit<CR>", {noremap = true}) -- Split Vertical
Keymap.set("n", "<leader>sh", ":split<CR>", {noremap = true}) -- Split Horizonlally
Keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", {noremap = true}) -- Toggle Minimize

-- Comments     
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", {noremap = false})
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", {noremap = false})

-- Indenting
Keymap.set("v", "<", "<gv", {noremap = false})
Keymap.set("v", ">", ">gv", {noremap = false})

