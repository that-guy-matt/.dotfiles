return {
  {
    'catppuccin/nvim',
    name = 'catppuccin', -- important: gives the plugin a stable name
    priority = 1000, -- load before other UI plugins
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        transparent_background = false,
      }
      --      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
