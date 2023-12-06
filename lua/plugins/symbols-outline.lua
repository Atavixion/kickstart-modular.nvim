-- shows a sidebar of functions, classes, etc.
return {
  'simrat39/symbols-outline.nvim',
  config = function()
    require('symbols-outline').setup {
      auto_close = true,
    }
  end
}
