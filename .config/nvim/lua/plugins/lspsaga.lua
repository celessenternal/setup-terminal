return {
	{
		"nvimdev/lspsaga.nvim",
		config = function()
			require("lspsaga").setup({

				lightbulb = {
					enable = false,
				},
			})
			local opts = { noremap = true, silent = true }
			local keymap = vim.keymap
			keymap.set("n", "<leader>j", ":Lspsaga diagnostic_jump_next<cr>", opts)
			keymap.set("n", "<leader>k", ":Lspsaga hover_doc<cr>", opts)
			keymap.set("n", "<leader>gd", ":Lspsaga finder<cr>", opts)
			keymap.set("n", "<leader>gr", ":Lspsaga rename<cr>", opts)
		end,
	},
}
