vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap

-- Normal mode using 'jk' combination
map('i', 'jk', '<Esc>', { noremap = true, silent = true })
map('t', 'jk', '<C-\\><C-n>', { noremap = true, silent = true })

-- Open NvimTree
map('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Use Ctrl+h/j/k/l to navigate between split windows
map('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })
map('n', '<leader>j', '<C-w>j', { noremap = true, silent = true })
map('n', '<leader>k', '<C-w>k', { noremap = true, silent = true })
map('n', '<leader>l', '<C-w>l', { noremap = true, silent = true })

-- Saving buffer
map('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })

-- Closing buffer or nvim
map('n', '<Leader>q', ':bd<CR>', { noremap = true, silent = true })
map('n', '<Leader>Q', ':q<CR>', { noremap = true, silent = true })

-- Adding new lines in normal mode
map('n', '<Leader>o', 'o<Esc>', { noremap = true, silent = true })
map('n', '<Leader>O', 'O<Esc>', { noremap = true, silent = true })

-- Themery setup
map("n", "<leader>tt", ":Themery<CR>", { noremap = true, silent = true })

-- Tabs setup
-- moving between tabs
map('n', '<leader><Tab>', ":BufferPrevious<CR>", { noremap = true, silent = true })
map('n', '<leader><S-Tab>', ":BufferNext<CR>", { noremap = true, silent = true })
-- reordering tabs
map('n', '<leader>H', ":BufferMovePrevious<CR>", { noremap = true, silent = true })
map('n', '<leader>L', ":BufferMoveNext<CR>", { noremap = true, silent = true })
-- pinning tab
map('n', '<leader>p', ":BufferPin<CR>", { noremap = true, silent = true })
-- tabs search
-- map('n', '<leader>fb', ":BufferPick<CR>", { noremap = true, silent = true })

-- load the session for the current directory
-- vim.keymap.set("n", "<leader>qs", function() require("persistence").load() end)

-- select a session to load
-- vim.keymap.set("n", "<leader>qS", function() require("persistence").select() end)

-- load the last session
-- vim.keymap.set("n", "<leader>ql", function() require("persistence").load({ last = true }) end)

-- stop Persistence => session won't be saved on exit
-- vim.keymap.set("n", "<leader>qd", function() require("persistence").stop() end)

vim.api.nvim_set_keymap("n", "<leader>p", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>",
    { noremap = true, silent = true })
