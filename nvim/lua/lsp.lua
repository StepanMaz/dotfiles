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

-- C# LSP Configuration
lspconfig.omnisharp.setup({
  cmd = { "omnisharp" },
  filetypes = { "cs", "vb" },  -- C# and Visual Basic support
  root_dir = lspconfig.util.root_pattern(".git", "omnisharp.json", "global.json", "*.sln"),
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
  on_attach = function(client, bufnr)
    -- Keybindings for LSP actions
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local opts = { noremap = true, silent = true }

    -- Example key mappings
    buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
    buf_set_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
    buf_set_keymap("n", "<leader>rn", "<Cmd>lua vim.lsp.buf.rename()<CR>", opts)
  end,
})
