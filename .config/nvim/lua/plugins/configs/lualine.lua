local colors = {

  crust   = '#232634',
  mantle  = '#292c3c',
  base    = '#303446',

  peach   = '#ef9f76',
  maroon  = '#ea999c',
  green   = '#a6d189',
  teal    = '#81c8be',
  blue    = '#8caaee',
  sapphire= '#85c1dc',
  red     = '#e78284',
  mauve   = '#ca9ee6',
  pink    = '#f4b8e4',

  text    = '#c6d0f5',

}


local theme = {
  normal = {
    a = {bg = colors.peach, fg = colors.crust, gui = 'bold'},
    b = {bg = colors.base, fg = colors.maroon},
    c = {bg = colors.crust, fg = colors.text}
  },
  insert = {
    a = {bg = colors.green, fg = colors.crust, gui = 'bold'},
    b = {bg = colors.base, fg = colors.teal},
    c = {bg = colors.crust, fg = colors.text}
  },
  visual = {
     a = {bg = colors.blue, fg = colors.crust, gui = 'bold'},
    b = {bg = colors.base, fg = colors.sapphire},
    c = {bg = colors.crust, fg = colors.text}
  },
  replace = {
     a = {bg = colors.mauve, fg = colors.crust, gui = 'bold'},
    b = {bg = colors.base, fg = colors.pink},
    c = {bg = colors.crust, fg = colors.text}
  },
  command = {
    a = {bg = colors.red, fg = colors.crust, gui = 'bold'},
    b = {bg = colors.base, fg = colors.maroon},
    c = {bg = colors.crust, fg = colors.text}
  },
  inactive = {
    a = {bg = colors.text, fg = colors.crust, gui = 'bold'},
    b = {bg = colors.base, fg = colors.text},
    c = {bg = colors.crust, fg = colors.text}
  }
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = theme,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
