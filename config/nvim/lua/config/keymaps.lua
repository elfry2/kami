-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap Esc to jk.
--
-- Found on https://www.reddit.com/r/neovim/comments/10tnhtf/comment/j77s75c
-- and modified afterwards.
vim.keymap.set("i", "jk", "<Esc>", { silent = true })
