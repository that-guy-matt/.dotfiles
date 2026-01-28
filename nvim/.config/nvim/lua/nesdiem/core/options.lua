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
vim.o.scrolloff = 10          -- minimal number of screen lines to keep above and below cursor
vim.o.sidescrolloff = 10      -- minimal number of side scroll size
vim.o.cursorline = true       -- show what line the cursor is on

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
vim.o.list = true            -- display white space characters
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' } -- characters to display for white space
vim.o.wrap = false           -- disable line wrap

-- ================
-- Clipboard/mouse
-- ================
vim.o.clipboard = "unnamedplus"  -- use system clipboard
vim.o.mouse = "a"                -- enable mouse support
vim.o.undofile = true            -- persistent undo across sessions
vim.o.undolevels = 10000         -- maximum number of undo steps saved

-- ================
-- Search behavior
-- ================
vim.o.ignorecase = true   -- ignore case while searching
vim.o.smartcase = true    -- case sensitive if search includes uppercase
vim.o.incsearch = true    -- show matches incrementally as you type
vim.o.hlsearch = true     -- highlight search matches

-- ==============
-- File handling
-- ==============
vim.o.backup = false        -- disable backup files
vim.o.writebackup = false   -- disable temporary backup while writing
vim.o.confirm = true        -- raise dialog ask to save current file(s)

-- ==========================
-- Window splitting behavior
-- ==========================
vim.o.splitbelow = true   -- new horizontal splits open below
vim.o.splitright = true   -- new vertical splits open to the right
