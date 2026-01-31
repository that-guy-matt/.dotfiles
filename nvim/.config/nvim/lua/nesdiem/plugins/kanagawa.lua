-- ~/.config/nvim/lua/nesdiem/plugins/colorscheme.lua
-- ============================================================
-- Plugin installation using Lazy.nvim
-- Installs Kanagawa colorscheme. Can add more schemes here later.
-- ============================================================

return {
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = false,       -- Load immediately (colorschemes must exist on startup)
    priority = 1000,    -- Ensure loaded before any UI-related plugins
    opts = {
      -- ========================================================
      -- Official Kanagawa setup options (see github)
      -- ========================================================
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,
      dimInactive = false,
      terminalColors = true,
      colors = {
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = { ui = { bg_gutter = "none" }} },
      },
      overrides = function(colors)
        return {}
      end,
      theme = "wave",
      -- background = {
        -- dark = "wave",
        -- light = "lotus",
      -- },
    },
    -- Automatically apply Kanagawa on startup
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd("colorscheme kanagawa")
    end,
  },
}

