-- Highlight, edit, and navigate code
return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    "nvim-tree/nvim-web-devicons"
  },
  build = ':TSUpdate',
  config = function ()
    require('nvim-treesitter.configs').setup({
      -- Add languages to be installed here that you want installed for treesitter
      ensure_installed = { 'c', 'cpp', 'lua', 'python', 'tsx', 'javascript', 'typescript', 'vimdoc', 'vim', 'query' },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}


