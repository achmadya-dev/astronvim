-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.code-runner.compiler-nvim" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  {
    -- customise the copilot plugin
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          -- accept = "<C-l>", changed to Alt-l
          accept = "<M-l>",
          accept_word = false,
          accept_line = false,
          next = "<C-.>",
          prev = "<C-,>",
          dismiss = "<C/>",
        },
      },
    },
  },
}
