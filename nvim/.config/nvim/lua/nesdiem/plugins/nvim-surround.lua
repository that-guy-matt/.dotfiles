-- ~/.config/nvim/lua/nesdiem/plugins/nvim-surround.lua
-- ============================================================
-- nvim-surround plugin spec for Lazy.nvim
-- Provides easy manipulation of surrounding characters like (), "", etc.
-- Minimal setup: works out of the box, no options required
-- ============================================================
return {
  {
    "kylechui/nvim-surround",
    version = "*",   -- Use latest stable
    event = "VeryLazy",  -- Load after startup
    config = function()
      require("nvim-surround").setup({
          -- add configuration options here
      })
    end,
  },
}
