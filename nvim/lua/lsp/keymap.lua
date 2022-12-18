--------------------------------------------------------------------------------
--

local keymap = vim.api.nvim_set_keymap

--
keymap("n", "<F2>", "<CMD>lua vim.lsp.buf.rename()<CR>", { silent = true, noremap = true })
keymap("i", "<F2>", "<CMD>lua vim.lsp.buf.rename()<CR>", { silent = true, noremap = true })

--
keymap("n", "<F12>", "<CMD>lua vim.lsp.buf.definition()<CR>", { silent = true, noremap = true })
keymap("i", "<F12>", "<CMD>lua vim.lsp.buf.definition()<CR>", { silent = true, noremap = true })

--
keymap("n", "<F3>", "<CMD>lua vim.lsp.buf.code_action()<CR>", { silent = true, noremap = true })
keymap("i", "<F3>", "<CMD>lua vim.lsp.buf.code_action()<CR>", { silent = true, noremap = true })
