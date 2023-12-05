-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*'
})

-- [[ Plugin Keymaps ]]
vim.keymap.set('n', '<leader>f', "<Cmd>Neotree toggle <CR>", { desc = 'Toggle Neotree' })
vim.keymap.set('n', '<leader>L', "<Cmd>Lazy <CR>", { desc = 'Open lazy.nvim' })


-- [[ Commands ]]
-- git commit
vim.api.nvim_create_user_command('Gcommit',
  function()
    vim.cmd(':Gwrite')
    vim.cmd(':Telescope gitmoji')
  end,
  {
    complete = "customlist,v:lua.completion_function"
  }
)

vim.api.nvim_create_user_command('Gc',
  function()
    vim.cmd(':Gwrite')
    vim.cmd(':Telescope gitmoji')
  end,
  {
    complete = "customlist,v:lua.completion_function"
  }
)
-- vim: ts=2 sts=2 sw=2 et
