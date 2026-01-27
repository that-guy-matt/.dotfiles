local M = {}

-- ============================================================
-- List of Kanagawa variants
-- ============================================================
M.themes = { "wave", "dragon", "lotus" }
M.current = 1

-- ============================================================
-- Helper: find index of a value in a table (works on all Neovim versions)
-- ============================================================
local function index_of(tbl, val)
  for i, v in ipairs(tbl) do
    if v == val then
      return i
    end
  end
  return nil
end

-- ============================================================
-- Apply a specific Kanagawa variant
-- ============================================================
function M.apply(theme)
  -- Load the theme
  require("kanagawa").load(theme)

  -- Update current index using local helper
  M.current = index_of(M.themes, theme) or 1

  print("Colorscheme applied:", "kanagawa-" .. theme)
end

-- ============================================================
-- Cycle through all variants
-- ============================================================
function M.cycle()
  local next_index = (M.current % #M.themes) + 1
  M.apply(M.themes[next_index])
end

-- ============================================================
-- Apply default theme at startup
-- ============================================================
M.apply(M.themes[M.current])

-- ============================================================
-- Keymap to cycle themes
-- <leader>ct cycles through Kanagawa variants
-- ============================================================
vim.keymap.set("n", "<leader>ct", M.cycle, { desc = "Cycle Kanagawa colorscheme" })

return M

