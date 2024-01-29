local config = function()
    --theme.normal.c.bg = nil 
    require('lualine').setup {
        options = {
            theme = "auto",
            globalstatus = true,
        },
        sections = {
            lualine_a = {
                {
                    'buffers',
                }
            }
        }
    }
end

return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    config = config,
}
-- local config = function()
-- 	require("lualine").setup({
-- 		options = {
-- 			theme = "auto",
-- 			globalstatus = true,
-- 			component_separators = { left = "|", right = "|" },
-- 			section_separators = { left = "", right = "" },
-- 		},
-- 		sections = {
-- 			lualine_a = { "mode" },
-- 			lualine_b = { "buffers" },
-- 			lualine_x = { "encoding", "fileformat", "filetype" },
-- 			lualine_y = { "progress" },
-- 			lualine_z = { "location" },
-- 		},
-- 		tabline = {},
-- 	})
-- end
--
-- return {
-- 	"nvim-lualine/lualine.nvim",
-- 	lazy = false,
-- 	config = config,
-- }
