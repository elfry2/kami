-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map lkj as another way to escape Insert Mode and Terminal Mode.
--
-- Found or inspired by something found on the following urls:
-- - https://www.reddit.com/r/neovim/comments/10tnhtf/comment/j77s75c
-- - https://vi.stackexchange.com/a/6966
vim.keymap.set("i", "lkj", "<Esc>", { silent = true })
vim.keymap.set("t", "lkj", "<C-\\><C-n>", { silent = true })

-- Map ;t as a shortcut to open a new window with a terminal buffer.
vim.keymap.set("n", ";t", "<cmd>vs<cr><cmd>term<cr>", { desc = "Open a new terminal window" })

-- Map ;c as a shortcut to close the current buffer.
vim.keymap.set("n", ";c", "<cmd>bd<cr>", { desc = "Close the current buffer" })
