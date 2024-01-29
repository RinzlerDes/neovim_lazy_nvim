vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap = vim.keymap

-- Directory Nav
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", {noremap = true})
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {noremap = true})

-- Tab nav
keymap.set("n", "[t", ":tabprev<CR>", {noremap = true})
keymap.set("n", "]t", ":tabnext<CR>", {noremap = true})

-- Pane Nav
-- keymap.set("n", "<C-h>", "<C-w>h", {noremap = true}) -- Left
-- keymap.set("n", "<C-i>", "<C-w>i", {noremap = true}) -- Split Vertical
-- keymap.set("n", "<C-h>", "<C-w>h", {noremap = true}) -- Split Vertical
-- keymap.set("n", "<C-h>", "<C-w>h", {noremap = true}) -- Split Vertical

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", {noremap = true}) -- Split Vertical
keymap.set("n", "<leader>sh", ":split<CR>", {noremap = true}) -- Split Horizonlally
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", {noremap = true}) -- Toggle Minimize

-- Comments     
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", {noremap = false})
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", {noremap = false})

-- Indenting
keymap.set("v", "<", "<gv", {noremap = false})
keymap.set("v", ">", ">gv", {noremap = false})

