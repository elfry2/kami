MiniDeps.add({
	source = 'akinsho/bufferline.nvim',
	-- Supply dependencies near target plugin
	depends = { 'nvim-tree/nvim-web-devicons' },
})

vim.opt.termguicolors = true
require("bufferline").setup{
	options = {
		offsets = {
			{
				-- filetype = "NvimTree",
				filetype = "neo-tree",
				-- text = "File Explorer" | function ,
				text = "",
				-- text_align = "left" | "center" | "right"
				-- text_align = "left",
				separator = true,
			}
		}
	}
}
