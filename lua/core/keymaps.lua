vim.g.mapleader = " "

-- Generic Mappings
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<C-h>", ":tabnew<CR>")
vim.keymap.set("n", "<TAB>", "<C-^>", { noremap = true, silent = true, desc = "Switch buffers" })

-- Neo Tree Mappings
vim.keymap.set("n", "<leader>t", ":Neotree filesystem reveal left<CR>")

vim.keymap.set("n", "K", function() require("hover").hover() end, {})

vim.keymap.set("n", "<leader>di", ":lua vim.diagnostic.open_float()<CR>", {});

-- Lsp Mappings
-- vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>df", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>rf", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
vim.keymap.set("n", "<leader>im", vim.lsp.buf.implementation, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- None-Ls Mappings
vim.keymap.set("n", "<leader>fr", vim.lsp.buf.format, {})

-- Dap Mappings
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<leader>B', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<leader>dr', function() require('dap').repl.open() end)
vim.keymap.set('n', '<leader>dl', function() require('dap').run_last() end)
vim.keymap.set('n', '<leader>pp', function() vim.notify("bruh") end)

-- Misc Mappings
--vim.keymap.set("n", "<leader>guid", ":let @a=system(\"uuidgen\")<CR>i\"<C-r>a<BS>\"", {})
--vim.keymap.set("n", "<leader>zdate", ":let @a=system(\"date -u +%Y-%m-%dT%H:%M:%SZ\")<CR>i\"<C-r>a<BS>\"", {})

function InsertText(str)
	vim.api.nvim_feedkeys('i', 'n', false)
	vim.api.nvim_put({str}, 'c', true, true)
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Esc>', true, true, true), 'n', false)
end
vim.keymap.set('n', '<leader>dz', function() InsertText(os.date("%Y-%m-%dT%H:%M:%SZ")) end)
vim.keymap.set('n', '<leader>guid', function() InsertText(io.popen('uuidgen'):read('*a'):sub(1, -2)) end)
