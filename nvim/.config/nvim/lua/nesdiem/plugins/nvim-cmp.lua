-- ~/.config/nvim/lua/nesdiem/plugins/nvim-cmp.lua
-- =================================================================
-- Completion engine configuration
-- Provides auto-completion UI using LSP, buffer words, and filesystem paths
-- =================================================================

return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter", -- Load only when entering insert mode
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- LSP completion source
      "hrsh7th/cmp-buffer",   -- Buffer word completion
      "hrsh7th/cmp-path",     -- Filesystem path completion
    },
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        -- Automatically show completion menu while typing
        completion = {
          autocomplete = {
            require("cmp.types").cmp.TriggerEvent.TextChanged,
          },
        },

        -- Key mappings while completion menu is active
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(), -- Manually trigger completion
          ["<C-e>"] = cmp.mapping.abort(),        -- Close completion menu
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept suggestion
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        }),

        -- Completion sources (order matters)
        sources = {
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
        },
      })
    end,
  },
}

