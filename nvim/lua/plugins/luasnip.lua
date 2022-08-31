local luasnip = require("luasnip")
local types = require("luasnip.util.types")

-- Configration --{{{
luasnip.config.setup({
    history = true, --keep around last snippet local to jump back
    updateevents = "TextChanged,TextChangedI", --update changes as you type
    enable_autosnippets = true,
    ext_opts = {
        [types.choiceNode] = {
            active = {
                virt_text = { { "●", "GruvboxOrange" } },
            },
        },
    },
})
--}}}

-- Key Mapping --{{{

--}}}

-- Load Snippets --{{{
require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/snippets/" })

require("luasnip/loaders/from_vscode").lazy_load({
    paths = { "~/.local/share/nvim/site/pack/packer/start/friendly-snippets" },
})
--}}}
