-- Set lualine as statusline

local colors = {
  normal = '#f9cc6c',
  replace = '#fd6883',
  insert = '#85dacc',
  visual = '#a8a9eb',
  bg = '#2c2525',
  alt_bg = '#403838',
  dark_fg = '#72696a',
  fg = '#94888A',
  light_fg = '#fff1f3'

}

local monokai = {
  normal = {
    a = { fg = colors.bg, bg = colors.normal, gui = 'bold' },
    b = { fg = colors.light_fg, bg = colors.alt_bg },
    c = { fg = colors.fg, bg = colors.bg },
  },
  replace = {
    a = { fg = colors.bg, bg = colors.replace, gui = 'bold' },
    b = { fg = colors.light_fg, bg = colors.alt_bg },
  },
  insert = {
    a = { fg = colors.bg, bg = colors.insert, gui = 'bold' },
    b = { fg = colors.light_fg, bg = colors.alt_bg },
  },
  visual = {
    a = { fg = colors.bg, bg = colors.visual, gui = 'bold' },
    b = { fg = colors.light_fg, bg = colors.alt_bg },
  },
  inactive = {
    a = { fg = colors.dark_fg, bg = colors.bg, gui = 'bold' },
    b = { fg = colors.dark_fg, bg = colors.bg },
    c = { fg = colors.dark_fg, bg = colors.bg },
  },
}

return {
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = {
    options = {
      icons_enabled = true,
      theme = monokai,
      component_separators = '|',
      section_separators = '',
    },
  },
}
