return {
{
  "williamboman/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    }
  },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = {}
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
    ensure_installed = {

        'lua-language-server',
        'stylua',
      }
    }
  }
}
