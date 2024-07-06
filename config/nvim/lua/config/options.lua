-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Neovide-specific config goes here.
if vim.g.neovide then
  -- Use Roboto Mono Nerd Font.
  vim.o.guifont = "RobotoMono Nerd Font:h10"

  -- Remember previous window size.
  vim.g.neovide_remember_window_size = true

  -- Use cwd as window title.
  --
  -- Found on or inspired by something found on the following urls:
  -- - https://github.com/neovide/neovide/issues/1553 and https://www.reddit.com/r/neovim/comments/13ia46q/make_window_title_nvim_pathtofiletxt/
  -- - https://www.reddit.com/r/neovim/comments/13ia46q/make_window_title_nvim_pathtofiletxt/
  -- - https://stackoverflow.com/a/75897088
  -- - https://stackoverflow.com/questions/1405583/concatenation-of-strings-in-lua
  vim.opt.title = true
  vim.opt.titlelen = 0 -- do not shorten title
  vim.opt.titlestring = vim.loop.cwd() .. " - Neovide"
end

-- Mark column 80.
vim.cmd("set colorcolumn=80")
