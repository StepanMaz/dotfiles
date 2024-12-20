require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require('mason-lspconfig').setup({
    -- A list of servers to automatically install if they're not already installed
    ensure_installed = { 'pyright', 'lua_ls', 'omnisharp', 'ts_ls', 'cssls', 'html' },
})

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
    filetypes = { "python" },
})

require("roslyn").setup({
    dotnet_cmd = "dotnet",              -- this is the default
    roslyn_version = "4.8.0-3.23475.7", -- this is the default
    on_attach = function(client, bufnr)
        -- Keybindings for LSP actions
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
        local opts = { noremap = true, silent = true }

        -- Example key mappings
        buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
        buf_set_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
        buf_set_keymap("n", "<leader>m", "<Cmd>lua vim.lsp.buf.rename()<CR>", opts)
    end,
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = vim.split(package.path, ';'),
            },
            diagnostics = {
                globals = { 'vim' }, -- Add `vim` as a global to avoid warnings
            },
            workspace = {
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                },
            },
        }
    }
})
