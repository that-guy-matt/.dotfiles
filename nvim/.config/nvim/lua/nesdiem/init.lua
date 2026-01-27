-- ~/.config/nvim/lua/nesdiem/init.lua
-- =================================================
-- This file acts as the hub for all customizations
-- It loads different modules in a logical order:
-- 	1. Options (settings)
-- 	2. Keymaps (shortcuts)
-- 	3. Plugins (lazy-loaded plugin manager)
-- =================================================

-- Load basic editor options
require("nesdiem.core.options")

-- Load keybindings
require("nesdiem.core.keymaps")

-- Load plugin manager and plugin configurations
require("nesdiem.core.lazy")
require("nesdiem.plugins")

-- Load color manager
require("nesdiem.core.colors")
