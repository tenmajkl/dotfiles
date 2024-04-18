vim.keymap.set('v', '<C-c>', '"+y<cr>')

vim.keymap.set('n', '~~', 'ZZ')

vim.keymap.set('i', 'jk', '<esc>')

vim.keymap.set('i', '"', '""<left>')
vim.keymap.set('i', "'", "''<left>")
vim.keymap.set('i', '(', '()<left>')
vim.keymap.set('i', '[', '[]<left>')
vim.keymap.set('i', '{', '{}<left>')
vim.keymap.set('i', '{<cr>', '{<cr>}<esc>O')
vim.keymap.set('i', '{;<cr>', '{<cr>};<esc>O')
vim.keymap.set('i', '/*', '/**/<left><left>')

vim.keymap.set('n', 'ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', 'fg', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', 'fb', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', 'fh', '<cmd>Telescope help_tags<cr>')
