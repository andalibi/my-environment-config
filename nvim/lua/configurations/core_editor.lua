--------------------------------------------------------------------------------
-- set line number

vim.wo.number = true
-- vim.wo.relativenumber = true

--------------------------------------------------------------------------------
-- use space instead tab

vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.b.softtabstop = 2
vim.bo.expandtab = true

--------------------------------------------------------------------------------
-- folding configuration

-- vim.opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep:|,foldclose:]]
-- vim.opt.foldcolumn = "2"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = false
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
require("pretty-fold").setup({})

--------------------------------------------------------------------------------
-- cursorline configuration

vim.wo.cursorline = true

vim.api.nvim_create_autocmd({ "WinEnter" }, {
    callback = function()
        vim.wo.cursorline = true
    end,
})

vim.api.nvim_create_autocmd({ "WinLeave" }, {
    callback = function()
        vim.wo.cursorline = false
    end,
})

--------------------------------------------------------------------------------
-- clipboard

local keymap = vim.api.nvim_set_keymap
keymap("v", "<C-c>", '"+y', { silent = true, noremap = true })
keymap("i", "<C-v>", '<ESC>"+pa', { silent = true, noremap = true })

--------------------------------------------------------------------------------
-- ???

vim.cmd([[
  set encoding=UTF-8

  inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
  set completeopt=menuone,noinsert,noselect
  set shortmess+=c


  set colorcolumn=81,82
  highlight ColorColumn ctermbg=0  guibg=lightgrey

  au BufNewFile,BufRead /*.rasi setf css

  set timeoutlen=500
]])
