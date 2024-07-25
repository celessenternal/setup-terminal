return {
	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				-- Map of filetype to formatters
				formatters_by_ft = {
					lua = { "stylua" },
					["*"] = { "codespell" },
					["_"] = { "trim_whitespace" },
				},
				format_on_save = {
					lsp_fallback = true,
					timeout_ms = 500,
				},
				format_after_save = {
					lsp_fallback = true,
				},
				log_level = vim.log.levels.ERROR,
				notify_on_error = true,
				formatters = {
					my_formatter = {
						command = "my_cmd",
						args = { "--stdin-from-filename", "$FILENAME" },
						range_args = function(self, ctx)
							return { "--line-start", ctx.range.start[1], "--line-end", ctx.range["end"][1] }
						end,
						stdin = true,
						cwd = require("conform.util").root_file({ ".editorconfig", "package.json" }),
						require_cwd = true,
						tmpfile_format = ".conform.$RANDOM.$FILENAME",
						condition = function(self, ctx)
							return vim.fs.basename(ctx.filename) ~= "README.md"
						end,
						exit_codes = { 0, 1 },
						env = {
							VAR = "value",
						},
						inherit = true,
						prepend_args = { "--use-tabs" },
					},
					other_formatter = function(bufnr)
						return {
							command = "my_cmd",
						}
					end,
				},
			})
			require("conform").formatters.my_formatter = {
				command = "my_cmd",
			}
		end,
	},
}
