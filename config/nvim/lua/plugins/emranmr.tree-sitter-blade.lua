-- Add and load EmranMR/Tree-Sitter-Blade.
--
-- Found on or inspired by something found on https://github.com/EmranMR/tree-sitter-blade/discussions/19#discussioncomment-8574120.

return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"html",
				"php_only",
				"php",
				"bash",
				"blade",
			},
		},
		config = function(_, opts)
			local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

			parser_config.blade = {
				install_info = {
					url = "https://github.com/EmranMR/tree-sitter-blade",
					files = { "src/parser.c" },
					branch = "main",
				},
				filetype = "blade",
			}

			vim.filetype.add({
				pattern = {
					[".*%.blade%.php"] = "blade",
				},
			})

			require("nvim-treesitter.configs").setup(opts)
		end,
	},
}
