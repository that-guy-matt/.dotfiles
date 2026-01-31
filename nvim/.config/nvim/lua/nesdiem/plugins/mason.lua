-- ~/.config/nvim/lua/nesdiem/plugins/mason.lua
-- ============================================================
-- mason.nvim
-- Purpose: Manage and auto-install LSP servers, linters, and formatters
-- Why: Simplifies setup and keeps tools isolated from the OS
-- ============================================================
return{
    "mason-org/mason.nvim",
    lazy = false, -- load on startup
    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    }
} 
