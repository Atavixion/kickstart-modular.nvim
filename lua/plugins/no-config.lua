-- Plugins that don't require any configuration

return {
    -- Git related plugins
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',

    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',

    -- Useful plugin to show you pending keybinds.
    -- the <space> menu1
    { 'folke/which-key.nvim',  opts = {} },

    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {} },

    -- adds colours to hex code
    'norcalli/nvim-colorizer.lua',

}