return function()
    local lsp_zero = require("lsp-zero")

    lsp_zero.preset("recommended")

    -- local cmp = require("cmp")
    -- local cmp_select = {behavior = cmp.SelectBehavior.Select}
    -- lsp_zero.defaults.cmp_mappings({
    --     ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    --     ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    --     ['<Enter>'] = cmp.mapping.confirm({ select = true }),
    --     ['<C-Space>'] = cmp.mapping.complete()
    -- })

    lsp_zero.on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        
        lsp_zero.default_keymaps({buffer = bufnr})
    end)
    
    lsp_zero.setup()

    local lspconfig = require("lspconfig")

    lspconfig.rust_analyzer.setup({})
end
