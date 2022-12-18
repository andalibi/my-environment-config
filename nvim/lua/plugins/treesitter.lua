--------------------------------------------------------------------------------
--
require("nvim-treesitter.configs").setup({
    -- A list of parser names, or "all"
    ensure_installed = {
        "c",
        "rust",
        "go",
        "lua",
        "typescript",
        "javascript",
        "html",
        "markdown",
        "toml",
        "yaml",
        "org",
        "norg",
        "norg_meta",
        "help",
        "bash",
        "proto",
        "zig",
    },
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = true,
    -- Automatically install missing parsers when entering buffer
    auto_install = true,
    -- List of parsers to ignore installing (for "all")
    -- ignore_install = { "javascript" },
    highlight = {
        -- `false` will disable the whole extension
        enable = true,
        -- disable = { },
        additional_vim_regex_highlighting = false,
    },
    autotag = {
        enable = true,
    },
})
