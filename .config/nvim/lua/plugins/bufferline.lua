return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		keys = {
			{ "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
			{ "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
			{ "<leader>d", "<Cmd>bdelete!<CR>" },
		},
		opts = {
			options = {
				mode = "tabs",
				always_show_buffer = false,
				show_close_icon = false,
			},
		},
	},
}
