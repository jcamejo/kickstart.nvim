local function gh(repo)
  return 'https://github.com/' .. repo
end

-- Tmux pane navigation
vim.pack.add { gh 'christoomey/vim-tmux-navigator' }

-- Git integration
vim.pack.add { gh 'tpope/vim-fugitive' }
vim.pack.add { gh 'tpope/vim-rhubarb' }

-- GitHub Copilot
vim.pack.add { gh 'github/copilot.vim' }
vim.pack.add {
  {
    src = gh 'CopilotC-Nvim/CopilotChat.nvim',
    depends = { gh 'nvim-lua/plenary.nvim' },
  },
}
require('CopilotChat').setup {}

-- File explorer
vim.pack.add { gh 'stevearc/oil.nvim' }
require('oil').setup {
  view_options = {
    show_hidden = true,
  },
  keymaps = {
    ['<C-v>'] = { 'actions.select', opts = { vertical = true }, desc = 'Open in vertical split' },
    ['<C-t>'] = { 'actions.select', opts = { tab = true }, desc = 'Open in new tab' },
  },
}

-- Rails support
vim.pack.add { gh 'tpope/vim-rails' }
