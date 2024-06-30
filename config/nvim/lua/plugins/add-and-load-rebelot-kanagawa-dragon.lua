-- Add and load rebelot/kanagawa.nvim.
--
-- Found on or inspired by something found on https://www.reddit.com/r/neovim/comments/13d5qbb.

return {
	"rebelot/kanagawa.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme kanagawa-dragon]])
	end,
}
