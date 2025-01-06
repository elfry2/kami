-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap Esc to jk.
--
-- Found on https://www.reddit.com/r/neovim/comments/10tnhtf/comment/j77s75c
-- and modified afterwards.
vim.keymap.set("i", "jk", "<Esc>", { silent = true })

vim.keymap.set("n", "tt", "<cmd>tab term<cr>", { desc = "Open a terminal on a new tabpage" })

vim.keymap.set("n", "ct", "<cmd>bd<cr>", { desc = "Close the current buffer" })

vim.keymap.set("n", "!bg", "<cmd>highlight Normal ctermbg=NONE guibg=NONE<cr>", { desc = "Use shell background" })
