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

-- [[ Barbar comes with no defaults ]]
-- Move to previous/next
map('n', '<A-w>,', '<Cmd>BufferPrevious<CR>', { noremap = true, silent = true, desc = 'Move to previous tab' })
map('n', '<A-w>.', '<Cmd>BufferNext<CR>', { noremap = true, silent = true, desc = 'Move to next tab' })
-- Re-order to previous/next
map('n', '<A-w><', '<Cmd>BufferMovePrevious<CR>', { noremap = true, silent = true, desc = 'Move tab left' })
map('n', '<A-w>>', '<Cmd>BufferMoveNext<CR>', { noremap = true, silent = true, desc = 'Move tab right' })
-- Goto buffer in position...
map('n', '<A-w>1', '<Cmd>BufferGoto 1 <CR>', { noremap = true, silent = true, desc = 'Goto tab 1' })
map('n', '<A-w>2', '<Cmd>BufferGoto 2 <CR>', { noremap = true, silent = true, desc = 'Goto tab 2' })
map('n', '<A-w>3', '<Cmd>BufferGoto 3 <CR>', { noremap = true, silent = true, desc = 'Goto tab 3' })
map('n', '<A-w>4', '<Cmd>BufferGoto 4 <CR>', { noremap = true, silent = true, desc = 'Goto tab 4' })
map('n', '<A-w>5', '<Cmd>BufferGoto 5 <CR>', { noremap = true, silent = true, desc = 'Goto tab 5' })
map('n', '<A-w>6', '<Cmd>BufferGoto 6 <CR>', { noremap = true, silent = true, desc = 'Goto tab 6' })
map('n', '<A-w>7', '<Cmd>BufferGoto 7 <CR>', { noremap = true, silent = true, desc = 'Goto tab 7' })
map('n', '<A-w>8', '<Cmd>BufferGoto 8 <CR>', { noremap = true, silent = true, desc = 'Goto tab 8' })
map('n', '<A-w>9', '<Cmd>BufferGoto 9 <CR>', { noremap = true, silent = true, desc = 'Goto tab 9' })
map('n', '<A-w>0', '<Cmd>BufferLast<CR>', { noremap = true, silent = true, desc = 'Goto last tab' })
-- Pin/unpin buffer
map('n', '<A-w>p', '<Cmd>BufferPin<CR>', { noremap = true, silent = true, desc = 'Pin tab' })
-- Close buffer
map('n', '<A-w>q', '<Cmd>BufferClose<CR>', { noremap = true, silent = true, desc = 'Quit tab' })

-- vim: ts=2 sts=2 sw=2 et
