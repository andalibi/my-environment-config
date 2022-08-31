require("neogen").setup({
    enabled = true,
    snippet_engine = "luasnip",
    languages = {
        javascript = {
            template = {
                annotation_convention = "jsdoc",
            },
        },
    },
})

vim.cmd("command NG Neogen")
