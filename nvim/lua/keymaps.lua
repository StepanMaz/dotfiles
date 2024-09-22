vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap

-- Normal mode using 'jk' combination
map('i', 'jk', '<Esc>', { noremap = true, silent = true })

-- Open NvimTree
map('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Use Ctrl+h/j/k/l to navigate between split windows
map('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

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
map('n', '<leader>h', ":BufferPrevious<CR>", { noremap = true, silent = true })
map('n', '<leader>l', ":BufferNext<CR>", { noremap = true, silent = true })
-- reordering tabs
map('n', '<leader>H', ":BufferMovePrevious<CR>", { noremap = true, silent = true })
map('n', '<leader>L', ":BufferMoveNext<CR>", { noremap = true, silent = true })
-- pinning tab
map('n', '<leader>p', ":BufferPin<CR>", { noremap = true, silent = true })
-- tabs search
-- map('n', '<leader>fb', ":BufferPick<CR>", { noremap = true, silent = true })

-- Remap Ctrl + hjkl to arrows in insert mode
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', { noremap = true, silent = true })
