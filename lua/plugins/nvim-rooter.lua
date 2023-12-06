-- change working direcory when you open a file
return {
  'notjedi/nvim-rooter.lua',
  config = function()
    require('nvim-rooter').setup()
  end
}
