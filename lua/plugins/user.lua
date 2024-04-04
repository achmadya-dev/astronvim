-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  {
    "CRAG666/code_runner.nvim",
    requires = "nvim-lua/plenary.nvim",
    lazy = false,
    config = function()
      require("code_runner").setup {
        -- choose default mode (valid term, tab, float, toggle, buf)
        mode = "term",
        -- Focus on runner window(only works on toggle, term and tab mode)
        focus = true,
        -- startinsert (see ':h inserting-ex')
        startinsert = true,
        term = {
          --  Position to open the terminal, this option is ignored if mode is tab
          position = "vert",
          -- window size, this option is ignored if tab is true
          size = 50,
        },
        float = {
          -- Key that close the code_runner floating window
          close_key = "<ESC>",
          -- Window border (see ':h nvim_open_win')
          border = "none",

          -- Num from `0 - 1` for measurements
          height = 0.8,
          width = 0.8,
          x = 0.5,
          y = 0.5,

          -- Highlight group for floating window/border (see ':h winhl')
          border_hl = "FloatBorder",
          float_hl = "Normal",

          -- Transparency (see ':h winblend')
          blend = 0,
        },
        filetype_path = "", -- No default path defined
        filetype = {
          c = "cd $dir && gcc *.cpp -o $fileNameWithoutExt && ./$fileNameWithoutExt",
          cpp = "cd $dir && g++ -std=c++17 *.cpp -o $fileNameWithoutExt && ./$fileNameWithoutExt",
          java = "cd $dir && java $fileName",
          python = "python3 -u",
          typescript = "deno run",
          rust = "cargo run",
          javascript = "node",
          lua = "cd $dir && lua *.lua",
          go = "go run",
          dart = "cd $dir && dart run",
        },
        project_path = "", -- No default path defined
        project = {},
      }
    end,
  },

  -- == Examples of Adding Plugins ==

  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function() require("lsp_signature").setup() end,
  -- },
  --
  -- -- == Examples of Overriding Plugins ==
  --
  -- -- customize alpha options
  -- {
  --   "goolord/alpha-nvim",
  --   opts = function(_, opts)
  --     -- customize the dashboard header
  --     opts.section.header.val = {
  --       " █████  ███████ ████████ ██████   ██████",
  --       "██   ██ ██         ██    ██   ██ ██    ██",
  --       "███████ ███████    ██    ██████  ██    ██",
  --       "██   ██      ██    ██    ██   ██ ██    ██",
  --       "██   ██ ███████    ██    ██   ██  ██████",
  --       " ",
  --       "    ███    ██ ██    ██ ██ ███    ███",
  --       "    ████   ██ ██    ██ ██ ████  ████",
  --       "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
  --       "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
  --       "    ██   ████   ████   ██ ██      ██",
  --     }
  --     return opts
  --   end,
  -- },
  --
  -- -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },
  --
  -- -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },
  --
  -- {
  --   "windwp/nvim-autopairs",
  --   config = function(plugin, opts)
  --     require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom autopairs configuration such as custom rules
  --     local npairs = require "nvim-autopairs"
  --     local Rule = require "nvim-autopairs.rule"
  --     local cond = require "nvim-autopairs.conds"
  --     npairs.add_rules(
  --       {
  --         Rule("$", "$", { "tex", "latex" })
  --           -- don't add a pair if the next character is %
  --           :with_pair(cond.not_after_regex "%%")
  --           -- don't add a pair if  the previous character is xxx
  --           :with_pair(
  --             cond.not_before_regex("xxx", 3)
  --           )
  --           -- don't move right when repeat character
  --           :with_move(cond.none())
  --           -- don't delete if the next character is xx
  --           :with_del(cond.not_after_regex "xx")
  --           -- disable adding a newline when you press <cr>
  --           :with_cr(cond.none()),
  --       },
  --       -- disable for .vim files, but it work for another filetypes
  --       Rule("a", "a", "-vim")
  --     )
  --   end,
  -- },
}
