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
vim.keymap.set("n", "<leader>w", vim.cmd.w, { desc = "Write file" })
vim.keymap.set("n", "<leader>q", vim.cmd.bd, { desc = "Close file" }) 
vim.keymap.set("n", "<leader>wq", vim.cmd.wq, { desc = "Write and quit" })

-- ================
-- File navigation
-- ================
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open netrw"})
vim.keymap.set("n", "<leader>n", vim.cmd.bn, { desc = "Next buffer" })
vim.keymap.set("n", "<leader>p", vim.cmd.bp, { desc = "Previous buffer" })

-- ===============
-- Window control
-- ===============
vim.keymap.set("n", "<leader>ws", vim.cmd.split, { desc = "Split horizontally" })
vim.keymap.set("n", "<leader>vs", vim.cmd.vsplit, {desc = "Split vertically" })

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

-- =========
-- Comments
-- =========
-- toggle line comment
vim.keymap.set("n", "<leader>/", 
    function() 
        require("Comment.api").toggle.linewise.current() 
    end, { desc = "Toggle line comment"}
)

-- toggle block comment
vim.keymap.set("n", "<leader>?", 
    function()
        require("Comment.api").toggle.blockwise.current()
    end, { desc = "Toggle block comment" }
)
 
-- =========
-- Neo-tree
-- =========
-- toggle neotree
vim.keymap.set("n", "<leader>nt", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree"})
