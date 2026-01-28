-- ~/.config/nvim/lua/nesdiem/plugins/todo-comments.lua
-- ============================================================
-- todo-comments.nvim plugin spec for Lazy.nvim
-- Highlights TODO, FIXME, NOTE in code
-- ============================================================
return {
  "folke/todo-comments.nvim",
  event = 'VimEnter',
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
      -- add options here
  }
}
