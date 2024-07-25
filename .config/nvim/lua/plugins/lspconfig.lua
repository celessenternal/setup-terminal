return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local nvim_lsp = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			nvim_lsp.tsserver.setup({
				capabilities = capabilities,
				filtypes = { "typescript", "typescript.tsx", "typescriptreact" },
				cmd = { "typescript-language-server", "--stdio" },
			})

			nvim_lsp.lua_ls.setup({
				capabilities = capabilities,
				filetypes = { "lua" },
			})

			nvim_lsp.jdtls.setup({
				capabilities = capabilities,
				filetypes = { "java" },
			})

			nvim_lsp.clangd.setup({
				capabilities = capabilities,
				filetypes = { "cpp" },
			})

			nvim_lsp.pyright.setup({
				capabilities = capabilities,
				filetypes = { "python" },
			})
			nvim_lsp.gopls.setup({
				capabilities = capabilities,
				filetypes = { "go" },
			})

			nvim_lsp.html.setup({
				capabilities = capabilities,
				filetypes = { "html" },
			})
		end,
	},
}
