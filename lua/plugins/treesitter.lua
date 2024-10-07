-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "html",
      "css",
      "bash",
      "c",
      "cpp",
      "csv",
      "python",
      "query",
      "json",
      "jsonc",
      "javascript",
      "typescript",
      "tsx",
      "jsdoc",
    },
  },
}
