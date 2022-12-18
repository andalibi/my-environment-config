require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = {
        "clangd",
        "cmake",
        "gopls",
        "rust_analyzer",
        "sumneko_lua",
        "tsserver",
        "html",
        "buf-language-server",
        "zls",
    },
})
