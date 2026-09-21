vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<C-A-h>', '<C-w><', { desc = "Decrease current window width" })
vim.keymap.set('n', '<C-A-l>', '<C-w>>', { desc = "Increase current window width" })
vim.keymap.set('n', '<C-A-k>', '<C-w>-', { desc = "Decrease current window height" })
vim.keymap.set('n', '<C-A-j>', '<C-w>+', { desc = "Increase current window height" })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = "Exit terminal mode" })
