-- [[ Basic Keymaps ]]
local map = vim.keymap.set

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
map({ 'n', 'v' }, '<leader>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
map('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Plugin Keymaps ]]
map('n', '<leader>f', "<Cmd>Neotree toggle <CR>", { desc = 'Toggle Neotree' })
map('n', '<leader>L', "<Cmd>Lazy <CR>", { desc = 'Open [L]azy.nvim' })
map('n', '<leader>gc', "<Cmd>Gcommit <CR>", { desc = 'Add and [c]ommit a file' })
map('n', '<leader>?', "<Cmd>Cheatsheet <CR>", { desc = 'Open the cheat sheet' })
map({ 'n', 'v' }, '<F8>', "<Cmd>SymbolsOutline <CR>", { desc = 'Toggle symbols outline' })

-- vim: ts=2 sts=2 sw=2 et
