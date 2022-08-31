--------------------------------------------------------------------------------
-- Formatter Configuration
--
-- Dependencies
--   mhartington/formatter.nvim
--   clang-format
--   gofmt
--   prettier
--   luafmt
--------------------------------------------------------------------------------

local clangFormatter = {
    function()
        return {
            exe = "clang-format",
            args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
            stdin = true,
            cwd = vim.fn.expand("%:p:h"),
        }
    end,
}


local javascriptFormatter = {
    function()
        return {
            exe = "prettier",
            args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote" },
            stdin = true,
        }
    end,
}

local luaFormatter = {
    function()
        return {
            exe = "stylua",
            -- args = {"--indent-count", 2, "--stdin"},
            stdin = false,
        }
    end,
}

local markdownFormatter = {
    function()
        return {
            exe = "prettier",
            -- exe = "mdformat",
            args = { vim.api.nvim_buf_get_name(0) },
            stdin = true,
        }
    end,
}

local reStructuredTextFormatter = {
    function()
        return {
            exe = "rstfmt",
            args = { vim.api.nvim_buf_get_name(0) },
            -- stdin = true
        }
    end,
}

require("formatter").setup({
    logging = false,
    filetype = {
        c = clangFormatter,
        cpp = clangFormatter,
        h = clangFormatter,
        go = {
            require("formatter.filetypes.go").golines,
        },
        javascript = javascriptFormatter,
        lua = luaFormatter,
        md = markdownFormatter,
        markdown = markdownFormatter,
        rst = reStructuredTextFormatter,
        ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace,
        },
    },
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    callback = function()
        vim.cmd("Format")
    end,
})
