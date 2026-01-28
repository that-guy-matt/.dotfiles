-- ~/.config/nvim/lua/nesdiem/plugins/autopairs.lua
-- ============================================================
-- nvim-autopairs
-- Automatically insert matching brackets, quotes, etc.
-- ============================================================
return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
    opts = {},   -- add options here
}
