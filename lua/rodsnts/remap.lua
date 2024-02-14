vim.g.mapleader = " "

-- Remap system yank to Leader + y
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', {})
vim.api.nvim_set_keymap('n', '<leader>y', '"+Y', {})
