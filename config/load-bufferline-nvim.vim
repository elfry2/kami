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
			{
				filetype = "NvimTree",
				highlight = "Directory",
			}
		}
	}
}
EOF
