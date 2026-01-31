-- ~/.config/nvim/lua/nesdiem/plugins/treesitter.lua
-- ============================================================
-- nvim-treesitter plugin spec for Lazy.nvim
-- Provides syntax highlighting, indentation, and textobject support
-- ============================================================

return {
  {
    "nvim-treesitter/nvim-treesitter",
    name = "treesitter",
    -- Run :TSUpdate after installing to ensure parsers are up-to-date
    build = ":TSUpdate",
    -- Load immediately since highlighting and indentation are core features
    lazy = false,
    priority = 900,

    opts = {
      -- ==========================================================
      -- List of languages you want installed automatically
      -- Can be expanded as needed
      -- ==========================================================
      ensure_installed = {
        -- Shell/CLI
        'bash',
        'zsh',

        -- Systems / Scripting / General purpose
        'c',
        'java',
        'cpp',
        'lua',
        'python',

        -- Web
        'html',
        'javascript',
        'css',
        'scss',
        'typescript',
        'tsx',

        -- Data / Databases
        'sql',
        'prisma',

        -- Configs
        'json',
        'yaml',
        'ini',
        'dockerfile',
        'git_config',
        'gitignore',
        'diff',

        -- Docs / Markup
        'markdown',
        'markdown_inline',

        -- Neovim / Editor Internals
        'luadoc',
        'query',
        'vim',
        'vimdoc',
      },
      auto_install = true,

      -- ==========================================================
      -- Enable Treesitter-based syntax highlighting
      -- ==========================================================
      highlight = {
        enable = true,          -- enable treesitter highlighting
        additional_vim_regex_highlighting = false, -- do not double-highlight with regex
      },

      -- ==========================================================
      -- Enable Treesitter-based indentation
      -- ==========================================================
      indent = {
        enable = true,
        disable = { "python" }, -- optional: disable for languages that misbehave
      },
    },

    config = function(_, opts)
        require("nvim-treesitter.config").setup(opts)
    end,
  },
}

