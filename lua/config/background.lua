function RemoveBackground()
    vim.api.nvim_set_hl(0, "Normal", { bg = ""})
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = ""})
    vim.api.nvim_set_hl(0, "NonText", { bg = ""})
    vim.api.nvim_set_hl(0, "NormalNC", { bg = ""})
    vim.api.nvim_set_hl(0, "LineNr", { bg = ""})
vim.api.nvim_set_hl(0, "SignColumn", { bg = ""})
end

RemoveBackground()
