local telescope_builtin = require("telescope.builtin")

vim.g.mapleader = " "

vim.keymap.set("n", "-", vim.cmd.Ex)

-- Telescope Mappings
vim.keymap.set('n', '<C-p>', telescope_builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, {})

-- Neo Tree Mappings
vim.keymap.set('n', '<leader>t', ':Neotree filesystem reveal left<CR>')
