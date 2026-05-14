local gh = 'https://github.com/'

local plugins = {
  -- Tmux pane navigation
  gh .. 'christoomey/vim-tmux-navigator',

  -- Git integration
  gh .. 'tpope/vim-fugitive',
  gh .. 'tpope/vim-rhubarb',

  -- File explorer
  gh .. 'stevearc/oil.nvim',

  -- Rails support
  gh .. 'tpope/vim-rails',
}

vim.pack.add(plugins)

require('oil').setup {
  view_options = {
    show_hidden = true,
  },
  keymaps = {
    ['<C-v>'] = { 'actions.select', opts = { vertical = true }, desc = 'Open in vertical split' },
    ['<C-t>'] = { 'actions.select', opts = { tab = true }, desc = 'Open in new tab' },
  },
}

return plugins
