local colors = {

  crust   = '#232634',
  mantle  = '#292c3c',
  base    = '#303446',
  surface1= '#51576d',

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

  transparent = '#00000000',
}


local theme = {
  normal = {
    a = {bg = colors.peach, fg = colors.mantle, gui = 'bold'},
    b = {bg = colors.mantle, fg = colors.maroon},
    c = {bg = colors.transparent, fg = colors.text}
  },
  insert = {
    a = {bg = colors.green, fg = colors.mantle, gui = 'bold'},
    b = {bg = colors.mantle, fg = colors.teal},
    c = {bg = colors.transparent, fg = colors.text}
  },
  visual = {
     a = {bg = colors.blue, fg = colors.mantle, gui = 'bold'},
    b = {bg = colors.mantle, fg = colors.sapphire},
    c = {bg = colors.transparent, fg = colors.text}
  },
  replace = {
     a = {bg = colors.mauve, fg = colors.mantle, gui = 'bold'},
    b = {bg = colors.mantle, fg = colors.pink},
    c = {bg = colors.transparent, fg = colors.text}
  },
  command = {
    a = {bg = colors.red, fg = colors.mantle, gui = 'bold'},
    b = {bg = colors.mantle, fg = colors.maroon},
    c = {bg = colors.transparent, fg = colors.text}
  },
  inactive = {
    a = {bg = colors.text, fg = colors.mantle, gui = 'bold'},
    b = {bg = colors.mantle, fg = colors.text},
    c = {bg = colors.transparent, fg = colors.text}
  }
}


-- Set status line
return {
  'nvim-lualine/lualine.nvim',
  opts = {
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
      globalstatus = true,
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
      lualine_x = {
        {
          'buffers',
          -- Specify names for special buffers
          filetype_names = {
            TelescopePrompt = 'Telescope',
            lazy = 'Lazy',
            alpha = 'Home',
            oil = 'Oil'
          },

          -- Style the buffer indicator
          buffers_color = {
            active = {bg = colors.peach, fg = colors.mantle , gui = 'bold'},
            inactive = {bg = colors.base , fg = colors.text},
            alternate_file = {bg = colors.pink, fg = colors.text}
          },

          -- Set symbols for the buffer indicator
          symbols = {
            modified = " ●",
            alternate_file = "",
            directory = ""
          },

          mode = 0,
          show_filename_only = true,
          hide_filename_extension = true,
          show_modified_status = true,


        }
      },
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
}
