themes = {"catppuccin/nvim", "bluz71/vim-nightfly-colors", "EdenEast/nightfox.nvim", "nyoom-engineering/oxocarbon.nvim", "sainnhe/sonokai", "morhetz/gruvbox"}

return {
    {
        -- change theme here
        themes[5],
        lazy = false,
        priority = 1000,
        config = function()
                                -- change theme here
            vim.cmd('colorscheme sonokai')
        end
    },
}

