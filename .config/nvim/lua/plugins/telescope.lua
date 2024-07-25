return {
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = function()
			local status, telescope = pcall(require, "telescope")
			if not status then
				return
			end
			local actions = require("telescope.actions")

			function telescope_buffer_dir()
				return vim.fn.expand("%:p:h")
			end

			local fb_actions = require("telescope").extensions.file_browser.actions
			telescope.setup({
				defaults = {
					mappings = {
						n = {
							["q"] = actions.close,
						},
					},
				},
				extensions = {
					file_browser = {
						theme = "dropdown",
						hijack_netrw = true,
						mappings = {
							["i"] = {
								["<C-w>"] = function()
									vim.cmd("normal vdb")
								end,
							},
							["n"] = {
								["N"] = fb_actions.create,
								["h"] = fb_actions.goto_parent_dir,
								["/"] = function()
									vim.cmd("startinsert")
								end,
							},
						},
					},
				},
			})

			telescope.load_extension("file_browser")

			local opts = { noremap = true, silent = true }
			vim.keymap.set(
				"n",
				"<leader>f",
				'<cmd>lua require("telescope.builtin").find_files({ no_ignore = false, hidden = false })<cr>',
				opts
			)
			vim.keymap.set("n", "<leader>r", '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
			vim.keymap.set("n", "<leader>a", '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
			vim.keymap.set("n", "<leader>t", '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)
			vim.keymap.set(
				"n",
				"sf",
				'<cmd>lua require("telescope").extensions.file_browser.file_browser({ path = "%:p:h", cwd = telescope_buffer_dir(), respect_git_ignore = false,hidden = true,grouped = true,previewer = false,initial_mode = "normal",layout_config = {height=40}})<cr>',
				opts
			)
		end,
	},
}
