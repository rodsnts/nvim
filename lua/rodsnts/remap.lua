vim.g.mapleader = " "

vim.api.nvim_set_keymap('t', '<esc><esc>', '<c-\\><c-n>', {})

-- Remap system yank to Leader + y
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', {})
vim.api.nvim_set_keymap('n', '<leader>y', '"+Y', {})
