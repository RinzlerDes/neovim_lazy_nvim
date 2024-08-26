return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        local npairs = require("nvim-autopairs")
        local Rule = require("nvim-autopairs.rule")

        npairs.setup({})

        for _, punct in pairs { ",", ";" } do
            npairs.add_rules {
                Rule("", punct)
                    :with_move(function(opts) return opts.char == punct end)
                    :with_pair(function() return false end)
                    :with_del(function() return false end)
                    :with_cr(function() return false end)
                    :use_key(punct)
            }
        end
    end,
}
