MiniDeps.add({
  source = 'nvim-neo-tree/neo-tree.nvim',
  checkout = 'v3.x',
  depends = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", -- optional, but recommended
  }
})
