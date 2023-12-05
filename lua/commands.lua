-- [[ Basic Commands ]]
-- git commit
vim.api.nvim_create_user_command('Gcommit',
  function()
    vim.cmd(':Gwrite')
    vim.cmd(':Telescope gitmoji')
  end,
  {}
)

vim.api.nvim_create_user_command('Gc',
  function()
    vim.cmd(':Gwrite')
    vim.cmd(':Telescope gitmoji')
  end,
  {}
)

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

-- autocd if opening a dir
local cdpwd = vim.api.nvim_create_augroup('cdpwd', { clear = true })

vim.api.nvim_create_autocmd({ 'VimEnter' }, {
  group = cdpwd,
  pattern = '*',
  command = 'cd ' .. vim.fn.getcwd()
})

-- vim: ts=2 sts=2 sw=2 et
