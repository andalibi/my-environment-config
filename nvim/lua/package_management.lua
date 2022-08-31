vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function()
    -- Packer can manage itself as an optional plugin
    use({ "wbthomason/packer.nvim", opt = true })

    -- ui
    use("kyazdani42/nvim-web-devicons")

    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })

    --
    use({ "anuvyklack/pretty-fold.nvim" })

    use({
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    })
    -- use "nvim-lua/completion-nvim"

    -- snippets
    use({
        "L3MON4D3/LuaSnip",
        requires = {
            { "rafamadriz/friendly-snippets" },
        },
    })

    use({ "danymat/neogen" })

    -- complelation
    use({
        "hrsh7th/nvim-cmp",
        requires = {
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-cmdline" },
            { "saadparwaiz1/cmp_luasnip" },
        },
    })

    use({ "onsails/lspkind.nvim" })

    use({
        "nvim-telescope/telescope.nvim",
        requires = {
            { "nvim-lua/popup.nvim" },
            { "nvim-lua/plenary.nvim" },
            { "nvim-telescope/telescope-symbols.nvim" },
            { "nvim-telescope/telescope-file-browser.nvim" },
        },
    })

    -- commenting plugin
    use("numToStr/Comment.nvim")

    use({
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    })

    -- format runner
    use("mhartington/formatter.nvim")

    -- color scheme
    -- use 'olimorris/onedarkpro.nvim'
    --     use 'folke/tokyonight.nvim'
    -- use({
    -- 'projekt0n/github-nvim-theme',
    -- config = function()
    -- end
    -- })
    use({ "catppuccin/nvim", as = "catppuccin" })

    -- diagnostics
    use({ "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" })
    use("mfussenegger/nvim-lint")

    --
    use("folke/which-key.nvim")

    --
    use("nvim-treesitter/nvim-treesitter")
    use("simrat39/symbols-outline.nvim")

    -- git
    use({ "akinsho/toggleterm.nvim" })

    -- auto pair
    use({
        "windwp/nvim-autopairs",
        "windwp/nvim-ts-autotag",
    })

    -- test runner
    use({
        "nvim-neotest/neotest",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-neotest/neotest-go",
        },
    })

    -- trr
    use({
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
    })

    --
    use({
        "max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup()
        end,
    })
end)
