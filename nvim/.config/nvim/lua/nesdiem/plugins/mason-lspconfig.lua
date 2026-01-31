-- ~/.config/nvim/lua/nesdiem/plugins/masin-lspconfig.lua
-- ============================================================
-- mason-lspconfig.nvim
-- Automatically installs LSP servers used by nvim-lspconfig
-- ============================================================
return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        -- Shell
        "bashls",  -- bash

        -- Systems / General
        "clangd",  -- c, cpp 
        "jdtls",   -- java
        "lua_ls",  -- lua (neovim-aware, must have)
        "pyright",  -- python

        -- Web
        "html",    -- html... obviously
        "cssls",   -- css, scss
        "ts_ls",-- javascript, typescript, tsx
        "eslint",  -- js/ts linting

        -- Data / Config
        "jsonls",  -- json
        "yamlls",  -- yaml
        "dockerls",-- dockerfile

        -- Markup / Docs
        "marksman",-- markdown

        -- SQL
        "sqlls",   -- sql

      },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
