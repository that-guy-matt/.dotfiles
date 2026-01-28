-- ~/.config/nvim/lua/nesdiem/plugins/telescope.lua
-- ============================================================
-- Telescope.nvim plugin spec for Lazy.nvim
-- Fullscreen layout, hard-cornered borders, safe preview
-- ============================================================

return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      local ts = require("telescope")

      -- ============
      -- Fullscreen layout defaults
      -- ============
      local h_pct = 0.90
      local w_pct = 0.80

      local fullscreen_setup = {
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        preview = { hide_on_startup = false },
        layout_strategy = "flex",
        layout_config = {
          flex = { flip_columns = 100 },
          horizontal = {
            mirror = false,
            prompt_position = "top",
            width = function(_, cols, _) return math.floor(cols * w_pct) end,
            height = function(_, _, rows) return math.floor(rows * h_pct) end,
            preview_cutoff = 10,
            preview_width = 0.5,
          },
          vertical = {
            mirror = true,
            prompt_position = "top",
            width = function(_, cols, _) return math.floor(cols * w_pct) end,
            height = function(_, _, rows) return math.floor(rows * h_pct) end,
            preview_cutoff = 10,
            preview_height = 0.5,
          },
        },
      }

      -- ============
      -- Telescope setup
      -- ============
      ts.setup {
        defaults = vim.tbl_extend("error", fullscreen_setup, {
          sorting_strategy = "ascending",
          path_display = { "filename_first" },
          mappings = {
            n = { ["o"] = require("telescope.actions.layout").toggle_preview,
                  ["<C-c>"] = require("telescope.actions").close },
            i = { ["<C-o>"] = require("telescope.actions.layout").toggle_preview },
          },
        }),
        pickers = {
          find_files = { find_command = { "fd", "--type", "f", "-H", "--strip-cwd-prefix" } },
        },
        extensions = {},
      }

      ts.load_extension("fzf")
    end,
  },
}

