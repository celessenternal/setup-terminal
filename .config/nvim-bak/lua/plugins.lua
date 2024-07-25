local status, packer = pcall(require, "packer")
if not status then
  print("Packer is not installed")
  return
end

vim.cmd([[packadd packer.nvim]])
packer.startup(function(use)
  use("wbthomason/packer.nvim")

  -- code intelligent
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/vim-vsnip")
  use("onsails/lspkind.nvim")
  use({
    "L3MON4D3/LuaSnip",
    run = "make install_jsregexp",
  })
  use("nvimdev/lspsaga.nvim")

  -- code formats
  use("jose-elias-alvarez/null-ls.nvim")
  use("MunifTanjim/prettier.nvim")
  use("windwp/nvim-autopairs")
  use("stevearc/conform.nvim")
  use("windwp/nvim-ts-autotag")

  -- theme prettier
  use("craftzdog/solarized-osaka.nvim")
  use("nvim-lualine/lualine.nvim")
  use("folke/tokyonight.nvim")
  use("norcalli/nvim-colorizer.lua")

  -- nvim tree-sitter
  use("nvim-tree/nvim-web-devicons")
  use("nvim-treesitter/nvim-treesitter")

  -- explore prettier
  use("nvim-lua/plenary.nvim")
  use("nvim-telescope/telescope.nvim")
  use("nvim-telescope/telescope-file-browser.nvim")
  use("nvim-telescope/telescope-fzf-native.nvim")

  -- bufferline
  use("akinsho/bufferline.nvim")
  use({
    "VonHeikemen/fine-cmdline.nvim",
    requires = {
      { "MunifTanjim/nui.nvim" },
    },
  })

  -- terminal
  use("voldikss/vim-floaterm")

  -- Install pack
  use("williamboman/mason.nvim")
end)
