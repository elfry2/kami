-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Neovide-specific config goes here.
if vim.g.neovide then
	-- Use Pixiedust cursor particle.
	vim.g.neovide_cursor_vfx_mode = "pixiedust"

	-- Get OS name. Found on: https://stackoverflow.com/a/30960054.
	function getOS()
		local BinaryFormat = package.cpath:match("%p[\\|/]?%p(%a+)")

		if BinaryFormat == "dll" then
			return "Windows"
		elseif BinaryFormat == "so" then
			return "Linux"
		elseif BinaryFormat == "dylib" then
			return "MacOS"
		end

		BinaryFormat = nil
	end

	if getOS() == "Linux" then
		-- Use Roboto Mono Nerd Font.
		vim.o.guifont = "RobotoMono Nerd Font:h10"
	end

	if getOS() == "Windows" then
		-- Use Cascadia Mono Font.
		vim.o.guifont = "CaskaydiaCove Nerd Font:h9"
	end

	-- Remember previous window size.
	vim.g.neovide_remember_window_size = true

	-- Use cwd as window title.
	--
	-- Found on or inspired by something found on the following urls:
	-- - https://github.com/neovide/neovide/issues/1553 and https://www.reddit.com/r/neovim/comments/13ia46q/make_window_title_nvim_pathtofiletxt/
	-- - https://www.reddit.com/r/neovim/comments/13ia46q/make_window_title_nvim_pathtofiletxt/
	-- - https://stackoverflow.com/a/69669289
	-- - https://stackoverflow.com/questions/1405583/concatenation-of-strings-in-lua
	function isEmpty(string)
		return string == nil or string == ""
	end

	path = vim.api.nvim_buf_get_name(0)

	vim.opt.title = true
	vim.opt.titlelen = 0 -- do not shorten title
	vim.opt.titlestring = isEmpty(path) and "Neovide" or path .. " - Neovide"
end

-- Mark column 80.
vim.cmd("set colorcolumn=80")

-- Use relative line numbers.
vim.wo.relativenumber = true

-- Create a command to turn off background colours. Useful on terminals that
-- support translucent backgrounds.
--
-- Found on or inspired by something found on the following urls:
-- - https://www.reddit.com/r/neovim/comments/z7pc9m/new_commands/
-- - https://neovim.io/doc/user/lua-guide.html#lua-guide-commands-create
vim.api.nvim_create_user_command(
	"NoBackground",
	"highlight Normal guibg=NONE | highlight NonText guibg=NONE | highlight SignColumn guibg=NONE",
	{}
)
