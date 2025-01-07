-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map jk as another way to escape Insert Mode and Terminal Mode.
--
-- Found or inspired by something found on the following urls:
-- - https://www.reddit.com/r/neovim/comments/10tnhtf/comment/j77s75c
-- - https://vi.stackexchange.com/a/6966
vim.keymap.set("i", "jk", "<Esc>", { silent = true })
vim.keymap.set("t", "jk", "<C-\\><C-n>", { silent = true })

-- Remap Esc to jk.
--
-- Found or inspired by something found on the following urls:
-- - https://www.reddit.com/r/neovim/comments/10tnhtf/comment/j77s75c
vim.keymap.set("i", "jk", "<Esc>", { silent = true })

vim.keymap.set("n", ";t", "<cmd>tab term<cr>", { desc = "Open a terminal on a new tabpage" })

vim.keymap.set("n", ";c", "<cmd>bd<cr>", { desc = "Close the current buffer" })
