-- java lsp
return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            setup = {
                -- disable jdtls config from lspconfig
                jdtls = function()
                    return true
                end,
            }
        }
    },
    {
        "mfussenegger/nvim-jdtls",
        ft = "java",
        config = function()
            -- import lspconfig plugin
            local lspconfig = require("lspconfig")

            -- import cmp-nvim-lsp plugin
            local cmp_nvim_lsp = require("cmp_nvim_lsp")

            local keymap = vim.keymap -- for conciseness

            local opts = { noremap = true, silent = true }
            local on_attach = function(client, bufnr)
                opts.buffer = bufnr

                -- set keybinds
                opts.desc = "Show LSP references"
                keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

                opts.desc = "Go to declaration"
                keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

                opts.desc = "Show LSP definitions"
                keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions

                opts.desc = "Show LSP implementations"
                keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

                opts.desc = "Show LSP type definitions"
                keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

                opts.desc = "See available code actions"
                keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

                opts.desc = "Smart rename"
                keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

                opts.desc = "Show buffer diagnostics"
                keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

                opts.desc = "Show line diagnostics"
                keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

                opts.desc = "Go to previous diagnostic"
                keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

                opts.desc = "Go to next diagnostic"
                keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

                opts.desc = "Show documentation for what is under cursor"
                keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

                opts.desc = "Restart LSP"
                keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
            end

            -- used to enable autocompletion (assign to every lsp server config)
            local capabilities = cmp_nvim_lsp.default_capabilities()






            --local on_attach = function(client, bufnr)
            --    --require("lazyvim.plugins.lspconfig").on_attach(client, bufnr)
            --    
            --end

            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
            -- calculate workspace dir
            local workspace_dir = vim.fn.stdpath("data") .. "/site/java/workspace-root/" .. project_name
            -- get the mason install path
            local install_path = require("mason-registry").get_package("jdtls"):get_install_path()
            -- local debug_install_path = require("mason-registry").get_package("java-debug-adapter"):get_install_path()
            local config = {
                cmd = {
                    install_path .. "/bin/jdtls",
                    "--jvm-arg=-javaagent:" .. install_path .. "/lombok.jar",
                    "-data",
                    workspace_dir,
                    '--add-modules=javafx.controls',
                    '/home/rinzler/javafx-sdk-21.0.2/lib'
                },
                on_attach = on_attach,
                capabilities = capabilities,
                root_dir = vim.fs.dirname(
                    vim.fs.find({ ".gradlew", ".git", "mvnw", "pom.xml", "build.gradle" }, { upward = true })[1]
                ),
            }
            vim.api.nvim_create_autocmd("FileType", {
                pattern = "java",
                callback = function()
                    require("jdtls").start_or_attach(config)
                end,
            })
        end,
    }
}
