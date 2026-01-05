MiniDeps.add({
	source = 'nvim-treesitter/nvim-treesitter',
	depends = {
		'neovim/nvim-lspconfig',
	},
})

require'nvim-treesitter'.setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
}

require'nvim-treesitter'.install {
	'javascript',
	'javascriptreact',
	'html',
	'php',
}
