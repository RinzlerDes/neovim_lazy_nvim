themes = {"bluz71/vim-nightfly-colors", "EdenEast/nightfox.nvim"}

return {
    {
        -- change theme here
        themes[1],
        lazy = false,
        priority = 1000,
        config = function()
                                -- change theme here
            vim.cmd('colorscheme nightfly')
        end
    },
}

