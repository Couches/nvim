local telescope_builtin = require("telescope.builtin")

vim.g.mapleader = " "

vim.keymap.set("n", "-", vim.cmd.Ex)

-- Telescope Mappings
vim.keymap.set("n", "<C-p>", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>gr", telescope_builtin.live_grep, {})

-- Neo Tree Mappings
vim.keymap.set("n", "<leader>t", ":Neotree filesystem reveal left<CR>")

-- Lsp Mappings
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>def", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>rf", vim.lsp.buf.references, {})

-- None-Ls Mappings
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
