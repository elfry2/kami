" 
" Load bufferline.nvim.
"
" Found on https://dotfyle.com/plugins/akinsho/bufferline.nvim.
set termguicolors
lua <<EOF
local bufferline = require('bufferline')
bufferline.setup {
	options = {
		offsets = {
			filetype = "neo-tree",
			text = function()
			return vim.fn.getcwd()
			end,
			highlight = "Directory",
			text_align = "center"
		}
	}
}
EOF
