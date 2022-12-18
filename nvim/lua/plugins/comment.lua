require("Comment").setup({
    padding = true,
    sticky = true,
    ignore = nil,
    mappings = {
        ---Includes `gcc`, `gbc`, `gc[count]{motion}` and `gb[count]{motion}`
        basic = true,
        ---Includes `gco`, `gcO`, `gcA`
        extra = true,
    },
    toggler = { line = "gcc", block = "gbc" },
    opleader = { line = "gc", block = "gb" },
    pre_hook = nil,
    post_hook = nil,
})
