-- ~/.config/nvim/lua/nesdiem/plugins/neo-tree.lua
-- ============================================================
-- neo-tree.nvim plugin spec for Lazy.nvim
-- File explorer with minimal, default behavior
-- ============================================================
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree handles its own lazy-loading internally
    opts = {
        filesystem = {
            commands = {
                -- if item is a file, it will close neotree after opening it
                open_and_close_neotree = function(state)
                    require("neo-tree.sources.filesystem.commands").open(state)

                    local tree = state.tree
                    local success, node = pcall(tree.get_node, tree)

                    if not success then
                        return
                    end

                    if node.type == "file" then
                        require("neo-tree.command").execute({ action = "close"})
                    end
                end,
            },
            window = {
                mappings = {
                    ["<CR>"] = "open_and_close_neotree",
                    ["<S-CR>"] = "open",
                },
            },
            filtered_items = {
                hide_dotfiles = false, -- self explanatory, this shows hidden files
                hide_gitignored = false, -- do not hide gitignored files
            },
        },
    },
  },
}
