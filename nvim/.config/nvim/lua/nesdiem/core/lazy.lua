-- ============================================
-- lazy.nvim bootstrap and setup
-- This file is responsible ONLY for:
--   1. Ensuring lazy.nvim is installed
--   2. Adding it to Neovim's runtime path
--   3. Initializing lazy.nvim
-- ============================================

-- Path where lazy.nvim will be installed
-- stdpath("data") usually resolves to:
-- ~/.local/share/nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if lazy.nvim is already installed
-- vim.uv is the newer API (Neovim 0.10+)
-- vim.loop is kept for backward compatibility
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- Git repository for lazy.nvim
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"

  -- Clone lazy.nvim (shallow clone, stable branch)
  local out = vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    lazyrepo,
    lazypath,
  })

  -- If git clone fails, show an error and exit Neovim
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

-- Prepend lazy.nvim to Neovim's runtime path
-- This makes it available via `require("lazy")`
vim.opt.rtp:prepend(lazypath)

-- ============================================
-- Leader keys
-- These MUST be set before loading lazy.nvim
-- so that plugin keymaps use the correct leader
-- ============================================

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- ============================================
-- Initialize lazy.nvim
-- ============================================

require("lazy").setup({
  spec = {
    -- Import all plugin specifications from this module
    -- Each plugin should live in its own file
    { import = "nesdiem.plugins" },
  },

  -- Default colorscheme used during plugin installation
  install = {
    colorscheme = { "habamax" },
  },

  -- Automatically check for plugin updates
  checker = {
    enabled = true,
  },
})

