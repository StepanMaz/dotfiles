vim.g.mapleader = " "

vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Use Ctrl+h/j/k/l to navigate between split windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>q', ':bd<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>Q', ':q<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>o', 'o<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>O', 'O<Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>tt", ":Themery<CR>", { noremap = true })
