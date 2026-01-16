MiniDeps.add({
  source = 'akinsho/bufferline.nvim',
  -- Supply dependencies near target plugin
  depends = { 'nvim-tree/nvim-web-devicons' },
})

vim.opt.termguicolors = true
require("bufferline").setup{}
