-- plugins/telescope.lua:
local map = vim.api.nvim_set_keymap

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    config = function()
        local builtin = require('telescope.builtin')
        map('n', '<leader>ff', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", {})
        --vim.keymap.set('n', '<leader>ff', builtin.find_files({}), {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end
}
