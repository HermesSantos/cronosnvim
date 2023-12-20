vim.g.mapleader=' '
local keymap = vim.keymap

keymap.set('n', '<S-y>', 'viwy')
keymap.set('n', '<S-r>', 'viwpviwy')
keymap.set('n', '<leader>pv', '<cmd>:Ex<cr>')
