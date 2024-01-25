return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function ()
    require("catppuccin").setup({
    flavour = "frappe", -- latte, frappe, macchiato, mocha
    background = { -- :h background
      light = "latte",
      dark = "frappe",
    },
  })
  vim.cmd.colorscheme "catppuccin"
  end
}
