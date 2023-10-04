-- [[ Configure Treesitter ]]

require('nvim-treesitter.configs').setup {
  -- Add languages to be installed here that you want installed for treesitter
  ensure_installed = { 'c', 'cpp', 'lua', 'python', 'tsx', 'javascript', 'typescript', 'vimdoc', 'vim', 'query' },

  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
}
