-- Add tmux navigation support
return {
  'alexghergh/nvim-tmux-navigation',
  lazy=false,
  opts = {
    keybindings = {
      left = "<M-h>",
      down = "<M-j>",
      up = "<M-k>",
      right = "<M-l>",
      last_active = "<M-\\>",
      next = "<M-Space>",
    }
  }
}


