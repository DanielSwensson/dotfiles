return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'tpope/vim-fugitive'
  use 'jremmen/vim-ripgrep'
  use 'github/copilot.vim'
  use 'christoomey/vim-tmux-navigator'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'neovim/nvim-lspconfig'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'ellisonleao/gruvbox.nvim'
  use 'sbdchd/neoformat'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use 'nvim-treesitter/nvim-treesitter-context'
end)

