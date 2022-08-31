--------------------------------------------------------------------------------
-- Neotest
-- 
-- A framework for interacting with tests within NeoVim.
-- link: <https://github.com/nvim-neotest/neotest>
--------------------------------------------------------------------------------

local neotest = require("neotest")

neotest.setup({
    adapters = {
        require("neotest-go")({
            experimental = {
                test_table = true,
            },
        }),
    },
    icons = {
        expanded = "",
        child_prefix = "",
        child_indent = "",
        final_child_prefix = "",
        non_collapsible = "",
        collapsed = "",
        passed = "",
        running = "",
        failed = "",
        unknown = "",
    },
})
