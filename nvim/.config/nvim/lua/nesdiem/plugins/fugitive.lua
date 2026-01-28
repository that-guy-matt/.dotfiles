-- ~/.config/nvim/lua/nesdiem/plugins/fugitive.lua
-- ============================================================
-- fugitive.nvim plugin spec for Lazy.nvim
-- Provides git commands inside Neovim
-- ============================================================

return {
  {
    "tpope/vim-fugitive",
    lazy = true, -- Load on demand
    cmd = { "G", "Git", "Gdiffsplit", "Gread", "Gwrite", "Gstatus" }, 
    -- Only load when one of these commands is used
  },
}
