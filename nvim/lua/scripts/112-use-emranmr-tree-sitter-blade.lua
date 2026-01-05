-- Sources:
-- - https://medium.com/@jogarcia/laravel-blade-on-neovim-ee530ff5d20d
-- - https://www.reddit.com/r/neovim/comments/1ppa4ag/nvimtreesitter_breaking_changes/
-- - https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#adding-custom-languages

vim.api.nvim_create_autocmd('User', { pattern = 'TSUpdate',
callback = function()
  require('nvim-treesitter.parsers').zimbu = {
    install_info = {
      url = 'https://github.com/EmranMR/tree-sitter-blade',
      -- revision = <sha>, -- commit hash for revision to check out; HEAD if missing
      -- optional entries:
      branch = 'main', -- only needed if different from default branch
      -- location = 'parser', -- only needed if the parser is in subdirectory of a "monorepo"
      -- generate = true, -- only needed if repo does not contain pre-generated `src/parser.c`
      -- generate_from_json = false, -- only needed if repo does not contain `src/grammar.json` either
      -- queries = 'queries/neovim', -- also install queries from given directory
      files = { "src/parser.c" },
    },
    filetype = "blade",
  }
end})

vim.filetype.add({
    pattern = {
        [".*%.blade%.php"] = "blade",
    },
})
