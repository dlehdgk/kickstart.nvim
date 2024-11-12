vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

local opts = { noremap = true, silent = true }

vim.keymap.set('n', 'x', '"_x', opts)
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
vim.keymap.set('v', 'p', '"_dP', opts)

vim.keymap.set('n', '<C-/>', '<C-w>s', opts, { desc = 'split window horizontally' })
vim.keymap.set('n', '<C-v>', '<C-w>v', opts, { desc = 'split window vertically' })
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts, { desc = 'close split window' })

vim.api.nvim_set_keymap('i', '<C-c>', 'copilot#Accept("<CR>")', { expr = true, silent = true })
vim.g.copilot_no_tab_map = true
