-- ~/.config/nvim/lua/nesdiem/plugins/nvim-lspconfig.lua
-- ============================================================
-- nvim-lspconfig
-- Core LSP client configurations for Neovim
-- ============================================================

return {
  {
    "neovim/nvim-lspconfig",
    lazy = false, -- LSP is core editor functionality

    config = function()
      -- Shell / CLI
      vim.lsp.enable("bashls")

      -- Systems / General purpose
      vim.lsp.enable("clangd")
      vim.lsp.enable("jdtls")
      vim.lsp.enable("pyright")

      -- Web
      vim.lsp.enable("html")
      vim.lsp.enable("cssls")
      vim.lsp.enable("ts_ls")
      vim.lsp.enable("eslint")

      -- Data / Config
      vim.lsp.enable("jsonls")
      vim.lsp.enable("yamlls")
      vim.lsp.enable("taplo")
      vim.lsp.enable("dockerls")
      vim.lsp.enable("sqlls")

      -- Docs / Markup
      vim.lsp.enable("marksman")

      -- Editor / Neovim
      vim.lsp.enable("vimls")

      -- Lua (Neovim)
      vim.lsp.enable("lua_ls")
    end,
  },
}
