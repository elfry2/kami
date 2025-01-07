return {
	"nvim-neo-tree/neo-tree.nvim",
	keys = {
		-- change a keymap
		{ ";f", "<cmd>Neotree toggle<cr>", desc = "Find Files" },
	},
	opts = {
		window = {
			width = 32,
		},
	},
}
