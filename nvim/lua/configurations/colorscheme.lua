--------------------------------------------------------------------------------
-- OneDarkPro
-- https://github.com/olimorris/onedarkpro.nvim
-- Customisable colors, styles, highlights and filetype highlights
--
--[[
local onedarkpro = require('onedarkpro')
onedarkpro.setup({theme = "onedarkpro"})
onedarkpro.load()
]]

--------------------------------------------------------------------------------
-- catppuccin
-- https://github.com/catppuccin/nvim
-- Soothing pastel theme for Neovim
--
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

vim.cmd("colorscheme catppuccin")

--------------------------------------------------------------------------------
-- NeoSolarized
-- https://github.com/Tsuzat/NeoSolarized.nvim
-- NeoSolarized colorscheme for NeoVim with full transparency
--
--[[
require("NeoSolarized.config").setup({
    style = "dark", -- "dark" or "light"
    transparent = false, -- true/false
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
    enable_italics = true, -- Italics for different hightlight groups (eg. Statement, Condition, Comment, Include, etc.)
    styles = {
        -- Style to be applied to different syntax groups
        comments = { italic = true }, -- Specify style for comments
        keywords = { italic = true }, -- Specify style for keywords
        functions = { bold = true }, -- Specify style for functions
        variables = {}, -- Specify style for variables
        string = { italic = true }, -- Specify style for string
        underline = true, -- true/false; use undercurl globally
        undercurl = true, -- true/false; use underline globally
    },
})

vim.cmd("colorscheme NeoSolarized")
]]
