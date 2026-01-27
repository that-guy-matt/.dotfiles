-- ~/.ocnfig/nvim/lua/nesdiem/keymaps.lua
-- ===============================================
-- Central place to define all custom keybindings
-- ===============================================

-- ============
-- Leader key
-- ============
-- The leader key is a prefix for custom shortcuts
vim.g.mapleader = " " -- set space as leader

-- ==============
-- Save and quit
-- ==============
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)

-- ================
-- File navigation
-- ================
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
