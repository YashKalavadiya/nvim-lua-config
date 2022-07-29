-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

-- return require('packer').startup(function()
--   -- Packer can manage itself
--   use 'wbthomason/packer.nvim'
--   use 'folke/tokyonight.nvim'

--     use 'wbthomason/packer.nvim'

--   -- Simple plugins can be specified as strings


--   -- Lazy loading:
--   -- Load on specific commands
--   use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

--   -- Load on an autocommand event
--   use {'andymass/vim-matchup', event = 'VimEnter'}

--   -- Load on a combination of conditions: specific filetypes or commands
--   -- Also run code after load (see the "config" key)
--   use {
--     'w0rp/ale',
--     ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
--     cmd = 'ALEEnable',
--     config = 'vim.cmd[[ALEEnable]]'
--   }

--   -- Plugins can have dependencies on other plugins
--   use {
--     'haorenW1025/completion-nvim',
--     opt = true,
--     requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
--   }


--   -- Plugins can have post-install/update hooks
--   use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}


--   -- Post-install/update hook with call of vimscript function with argument
--   use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

-- end)




-- Install plugins
-- return packer.startup(function(use)
  return require('packer').startup(function(use)
  -- Add you plugins here:
  use 'wbthomason/packer.nvim' -- packer can manage itself

  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'

  -- File explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Indent line
  use 'lukas-reineke/indent-blankline.nvim'

  -- Autopair
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup{}
    end
  }

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- Tag viewer
  use 'preservim/tagbar'

  -- Treesitter interface
  use 'nvim-treesitter/nvim-treesitter'

  -- Color schemes
  use 'navarasu/onedark.nvim'
  use 'tanvirtin/monokai.nvim'
  use { 'rose-pine/neovim', as = 'rose-pine' }

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }

  -- Statusline
  use {
    'feline-nvim/feline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup{}
    end
  }

  -- Dashboard (start screen)
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }


end)
