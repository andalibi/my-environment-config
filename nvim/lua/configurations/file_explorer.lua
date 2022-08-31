require("telescope").setup({
    extensions = {
        file_browser = {
            theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = false,
            mappings = {
                ["n"] = {
                    -- bind to "o"
                    ["o"] = require("telescope.actions").select_default,
                },
            },
        },
    },
})

require("telescope").load_extension("file_browser")
