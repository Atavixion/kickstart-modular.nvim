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

-- vim: ts=2 sts=2 sw=2 et
