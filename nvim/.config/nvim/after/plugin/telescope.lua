local builtin = require 'telescope.builtin'

--vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>ff', function()
  builtin.find_files {
    hidden = true,
    no_ignore = true,
  }
end)

-- search in git repo
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })

-- live grep
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string { search = vim.fn.input 'Grep > ' }
end)
