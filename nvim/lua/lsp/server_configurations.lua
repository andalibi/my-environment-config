local lspconfig = require("lspconfig")

-- Setup lspconfig.
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- c/c++ language servers setup
lspconfig.clangd.setup({ capabilities = capabilities })
lspconfig.cmake.setup({ capabilities = capabilities })

--------------------------------------------------------------------------------
-- Language: Golang
-- golang language servers setup
lspconfig.gopls.setup({ capabilities = capabilities })

--------------------------------------------------------------------------------
-- front-end language servers setup
lspconfig.html.setup({ capabilities = capabilities })
lspconfig.tsserver.setup({ capabilities = capabilities })
lspconfig.angularls.setup({ capabilities = capabilities })

--------------------------------------------------------------------------------
-- Language  : Lua
-- Repository: https://github.com/sumneko/lua-language-server
lspconfig.sumneko_lua.setup({
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = "LuaJIT",
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { "vim" },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
})

--------------------------------------------------------------------------------
-- Language  : ProtoBuffer
-- Repository: https://github.com/bufbuild/buf-language-server
lspconfig.bufls.setup({ capabilities = capabilities })

--------------------------------------------------------------------------------
-- Language  : ProtoBuffer
-- Repository: https://github.com/bufbuild/buf-language-server
lspconfig.zls.setup({ capabilities = capabilities })
