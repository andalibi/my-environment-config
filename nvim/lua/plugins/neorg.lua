--------------------------------------------------------------------------------
-- Neorg
--
-- site: https://github.com/nvim-neorg/neorg
--------------------------------------------------------------------------------

require("neorg").setup({
    load = {
        ["core.defaults"] = {},
        ["core.norg.news"] = {
            config = {
                check_news = false,
            },
        },
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp",
            },
        },
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    gtd = "~/gtd",
                },
            },
        },
        ["core.norg.concealer"] = {
            config = {},
        },
        ["core.gtd.base"] = {
            config = {
                workspace = "gtd",
            },
        },
    },
})
