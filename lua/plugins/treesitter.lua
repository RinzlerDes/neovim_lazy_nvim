return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "rust",
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "elixir",
                "heex",
                "javascript",
                "html",
                "python",
                "toml",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end
}

--
-- return {
--     "nvim-treesitter/nvim-treesitter",
--     lazy = false,
--     config = function()
--         require("nvim-treesitter.configs").setup({
--             build = ":TSUpdate",
--             indent = {
--                 enable = true,
--             },
--             autotag = {
--                 enable = true,
--             },
--             event = {
--                 "BufReadPre",
--                 "BufNewFile",
--             },
--             ensure_installed = {
--                 "rust",
--                 "markdown",
--                 "json",
--                 "javascript",
--                 "typescript",
--                 "yaml",
--                 "html",
--                 "css",
--                 "markdown",
--                 "bash",
--                 "lua",
--                 "dockerfile",
--                 "solidity",
--                 "gitignore",
--                 "python",
--                 "vue",
--                 "svelte",
--                 "toml",
--                 "java",
--                 "c",
--             },
--             auto_install = true,
--             highlight = {
--                 enable = true,
--                 additional_vim_regex_highlighting = true,
--             },
--             incremental_selection = {
--                 enable = true,
--                 keymaps = {
--                     init_selection = "<C-s>",
--                     node_incremental = "<C-s>",
--                     scope_incremental = false,
--                     node_decremental = "<BS>",
--                 },
--             },
--         })
--     end,
-- }
