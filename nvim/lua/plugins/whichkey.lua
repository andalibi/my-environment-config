local wk = require("which-key")

wk.setup({
    icons = {
        breadcrumb = "» ",
        separator = " ➜ ",
        group = "+ ",
    },
    window = {
        border = "double",
        margin = { 1, 1, 1, 1 },
    },
})

wk.register({
    ["<leader>x"] = {
        name = "+Diagnostics",
        x = { "<cmd>TroubleToggle<cr>", "Toggle" },
        d = { "<cmd>lua require('telescope.builtin').diagnostics({bufnr = 0})<cr>", "Document Diagnostics" },
        w = { "<cmd>lua require('telescope.builtin').diagnostics({bufnr = nil})<cr>", "Workspace Diagnostics" },
        q = { "<cmd>Trouble quickfix<cr>", "Quickfix" },
        t = { "<cmd>TodoTelescope<cr>", "Todo Comments" },
    },
    ["<leader>c"] = {
        name = "+Comments",
        t = { "<cmd>TodoTelescope<cr>", "Todo Comments" },
        g = {
            name = "+Generate Doc",
            c = { "<cmd>Neogen class<cr>", "Class" },
            f = { "<cmd>Neogen func<cr>", "Function" },
            t = { "<cmd>Neogen type<cr>", "Type" },
            d = { "<cmd>Neogen<cr>", "File" },
        },
    },
    ["<leader>f"] = {
        name = "+File Browser", -- optional group name
        b = { "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<cr>", "Open Root Directory" },
        c = {
            "<cmd>lua require 'telescope'.extensions.file_browser.file_browser({cwd_to_path = true, path = vim.fn.expand('%:p:h'), select_buffer = true})<cr>",
            "Open Current Derectory",
        },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    },
    ["<leader>g"] = {
        name = "+Git",
        c = { '<cmd>lua require("telescope.builtin").git_commits()<CR>', "Git Commits" },
        t = { '<cmd>lua require("telescope.builtin").git_bcommits()<CR>', "Git Buffer Commits" },
        b = { '<cmd>lua require("telescope.builtin").git_bcommits()<CR>', "Git Branches" },
        s = { '<cmd>lua require("telescope.builtin").git_bcommits()<CR>', "Git Status" },
    },
    ["<leader>l"] = {
        name = "+LSP",
        r = { "<cmd>lua require('telescope.builtin').lsp_references()<cr>", "References" },
        s = { "<cmd>SymbolsOutline<cr>", "Symbols" },
    },
    ["<leader>s"] = {
        name = "+Finder", -- optional group name
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        g = { "<cmd>lua require('telescope.builtin').live_grep()<cr>", "Find Word" },
    },
    ["<leader>t"] = {
        name = "+Test Runner",
        ["1"] = { "<cmd>lua require('neotest').run.run(vim.fn.getcwd())<cr>", "Test Directory" },
        ["2"] = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", "Test File" },
        ["3"] = { "<cmd>lua require('neotest').run.run()<cr>", "Test Function" },
        ["4"] = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Debug Test" },
        s = { "<cmd>lua require('neotest').run.stop()<cr>", "Stop" },
        o = { "<cmd>lua require('neotest').output.open()<cr>", "Output" },
        u = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Toggle Summary" },
    },
    ["<leader>r"] = { "<cmd>lua ReloadConfig()<cr>", "Reload Neovim Configuration" },
    ["<leader>b"] = { "<cmd>lua require('telescope.builtin').buffers({show_all_buffers = true})<cr>", "Buffers List" },
})

vim.api.nvim_set_keymap("n", "<space>", "<cmd>WhichKey <leader><cr>", { silent = true, noremap = true })
