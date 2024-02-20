" 
" Set up lualine.
"
" Found on https://dotfyle.com/plugins/nvim-lualine/lualine.nvim.

lua << END
require('lualine').setup({
	options = {
			disabled_filetypes = {'NvimTree'}
		}
})
END
