-- Set keymaps from table.
-- Source: https://share.google/aimode/vb5yP6EEMcxliHYoW

local mappings = {
    -- Normal mode mappings
    n = {
        -- Format: {lhs, rhs, opts_or_desc}
        -- The `desc` field is useful for plugins like which-key
        { "tr", ":Neotree<CR>", { desc = "Open Neo-tree" } },
    },

    -- Insert mode mappings
    i = {
        { "kj", "<ESC>", { desc = "Exit insert mode with kj", silent = true } },
    },

    -- Visual mode mappings
    v = {
        { "<Leader>y", '"+y', { desc = "Yank to system clipboard" } },
    }
}

--------------------------------------------------------------------------------

local function set_mappings(map_table)
    for mode, maps in pairs(map_table) do
        for _, map_data in ipairs(maps) do
            local lhs = map_data[1]
            local rhs = map_data[2]
            local opts = map_data[3] or {}

            -- vim.keymap.set defaults to `noremap = true` which is usually desired
            vim.keymap.set(mode, lhs, rhs, opts)
        end
    end
end

set_mappings(mappings)

