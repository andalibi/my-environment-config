require("package_management")
require("configurations.terminal")
require("configurations.file_explorer")
require("configurations.reload")
--
require("plugins.treesitter")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.trouble")
require("plugins.neotree")
require("plugins.neotest")
require("plugins.neogen")
require("plugins.luasnip")
require("plugins.cmp")
require("plugins.autopairs")
require("plugins.whichkey")
require("plugins.better_escape")
require("plugins.formatter")
--
require("lsp.server_install")
require("lsp.server_configurations")
require("lsp.symbols_outline")

-- set line number --{{{
vim.wo.number = true
-- vim.wo.relativenumber = true
--}}}

-- use space instead tab --{{{
vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.b.softtabstop = 2
vim.bo.expandtab = true
--}}}

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

vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = -1
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = true
require("pretty-fold").setup()
--------------------------------------------------------------------------------
--
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
-- theme
-- local onedarkpro = require('onedarkpro')
-- onedarkpro.setup({theme = "onedarkpro"})
-- onedarkpro.load()
--vim.g.tokyonight_style = "night"
--vim.cmd[[colorscheme tokyonight]]

--require('github-theme').setup({
--  theme_style = "light"
--})

vim.g.catppuccin_flavour = "latte" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

vim.cmd([[colorscheme catppuccin]])

--------------------------------------------------------------------------------
--
require("Comment").setup({
    padding = true,
    sticky = true,
    ignore = nil,
    mappings = {
        ---Includes `gcc`, `gbc`, `gc[count]{motion}` and `gb[count]{motion}`
        basic = true,
        ---Includes `gco`, `gcO`, `gcA`
        extra = true,
        ---Includes `g>`, `g<`, `g>[count]{motion}` and `g<[count]{motion}`
        extended = true,
    },
    toggler = { line = "gcc", block = "gbc" },
    opleader = { line = "gc", block = "gb" },
    pre_hook = nil,
    post_hook = nil,
})

require("todo-comments").setup({})
