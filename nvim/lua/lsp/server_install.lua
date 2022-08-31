require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = {
        "clangd",
        "cmake",
        "gopls",
        "sumneko_lua",
        "tsserver",
        "html",
        "rust_analyzer",
    },
})

