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
vim.keymap.set("n", "<leader>wq", vim.cmd.wq)

-- ================
-- File navigation
-- ================
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- ===============
-- Window control
-- ===============
vim.keymap.set("n", "<leader>ws", vim.cmd.split)
vim.keymap.set("n", "<leader>vs", vim.cmd.vsplit)

-- ==========
-- Telescope 
-- ==========
-- find files in repo (git tracked)
vim.keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<cr>", { desc = "Git repo files" })

-- find any files
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })

-- search text inside files
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })

-- Open buffers
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "List buffers" })

-- Search help tags
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })
