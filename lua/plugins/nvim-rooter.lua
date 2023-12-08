-- change working direcory when you open a file
return {
  'notjedi/nvim-rooter.lua',
  opts = {
    fallback_to_parent = true,
    rooter_patterns = { '.git', '.hg', '.svn', '*.cabal' }
  },
}
