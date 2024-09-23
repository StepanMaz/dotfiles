require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c_sharp", "lua", "javascript" }, -- Add other languages you need
    sync_install = false,                                -- Install languages asynchronously
    auto_install = true,                                 -- Automatically install missing parsers

    highlight = {
        enable = true, -- Enable syntax highlighting
        additional_vim_regex_highlighting = false,
    },

    indent = {
        enable = true, -- Enable Tree-sitter based indentation
    },

    -- Optional: Additional modules (textobjects, incremental selection, etc.)
    incremental_selection = {
        enable = true,
    },

    modules = {},
    ignore_install = {}
}
