-- Source: https://pawelgrzybek.com/highlight-yanked-text-in-neovim/
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})
