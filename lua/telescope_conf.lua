return function()
    local actions = require("telescope.actions")

    -- kinda a keymapping but calls .setup and only applies to telescope
    -- so its here instead
    require("telescope").setup{
        defaults = {
            mappings = {
                i = {
                    ["<Esc>"] = actions.close
                }
            }
        }
    }
end
