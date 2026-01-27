--        -- Shell/CLI
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
        'toml',
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
        'vimdoc', ~/.config/nvim/init.lua
-- ===============================================
-- This is the single entry point for Neovim
-- It loads the main custom configuration module
-- lovingly named "nesdiem"
-- I keep this file minimal to keep startup fast
-- ===============================================

-- ===== Load core config =====
require("nesdiem")
