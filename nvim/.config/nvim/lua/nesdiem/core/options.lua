-- ~/.config/nvim/lua/nesdiem/options.lua
-- ==================================================================
-- This file sets core Neovim options.
-- These affect editing behavior, appearance, and general usability
-- ==================================================================

-- =============
-- Line numbers
-- =============
vim.o.number = true           -- show absolute line numbers
vim.o.relativenumber = true   -- show relative numbers for easier navigation
vim.o.scrolloff = 10           -- minimal number of screen lines to keep above and below cursor

-- =====================
-- Tabs and indentation
-- =====================
vim.o.expandtab = true   -- convert tabs to spaces
vim.o.shiftwidth = 4     -- number of spaces for indentation, set to 4 for python
vim.o.tabstop = 4        -- number of spaces a tab counts for
vim.o.smartindent = true -- smart auto indenting

-- ===========
-- Appearance
-- ===========
vim.o.termguicolors = true   -- enable true colors for modern themes
vim.o.signcolumn = "yes"     -- always show sign column

-- ================
-- Clipboard/mouse
-- ================
vim.o.clipboard = "unnamedplus"  -- use system clipboard
vim.o.mouse = "a"                -- enable mouse support
