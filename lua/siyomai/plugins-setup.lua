local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'yorickpeterse/happy_hacking.vim'
  use 'szw/vim-maximizer'
  use 'tpope/vim-surround'
  use 'numToStr/comment.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'hrsh7th/cmp-nvim-lsp'

  -- lualine
  use 'nvim-lualine/lualine.nvim'

  -- fuzzy search
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
  use {'nvim-telescope/telescope.nvim', branch = '0.1.x'}

  -- autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

  -- stippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- lsp management and installation
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- lsp configuration
  use 'neovim/nvim-lspconfig'

  -- git integration
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

  -- vim greeter
  use 'mhinz/vim-startify'

  -- formatter
  use 'mhartington/formatter.nvim'

  -- markdown preview
  -- install without yarn or npm
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- syntax highlighting
  use({
    'nvim-treesitter/nvim-treesitter',
    run = function()
      require('nvim-treesitter.install').update({with_sync = true})
    end,
  })

  -- auto closing
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- prettier
  use 'MunifTanjim/prettier.nvim'

  -- git signs
  use 'lewis6991/gitsigns.nvim'

  -- org-mode
  use {
    'akinsho/org-bullets.nvim',
    config = function()
      require('org-bullets').setup()
    end
  }

  -- LLM
  use 'David-Kunz/gen.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
