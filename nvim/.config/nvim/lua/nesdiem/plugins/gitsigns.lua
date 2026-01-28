-- ~/.config/nvim/lua/nesdiem/plugins/gitsigns.lua
-- ============================================================
-- gitsigns.nvim plugin spec for Lazy.nvim
-- Default recommended setup from GitHub
-- ============================================================

return {
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,  -- Load immediately
    opts = {
      signs = {
        add          = {hl = 'GitGutterAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
        change       = {hl = 'GitGutterChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
        delete       = {hl = 'GitGutterDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        topdelete    = {hl = 'GitGutterDeleteChange', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        changedelete = {hl = 'GitGutterChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
      },
      signcolumn = true,
      numhl      = false,
      linehl     = false,
      word_diff  = false,
      watch_gitdir = {
        interval = 1000,
        follow_files = true
      },
      attach_to_untracked = true,
      current_line_blame = false,
      sign_priority = 6,
      update_debounce = 100,
      status_formatter = nil,
    },
    config = function(_, opts)
      require("gitsigns").setup(opts)
    end,
  },
}
