-- require "lsp_setup"

function netrw_tree()
    vim.cmd"Ntree" 
end

-- Numbering
vim.wo.number = true
vim.wo.relativenumber = true

vim.o.showmode = false
vim.o.path = vim.o.path .. "**"
vim.o.termguicolors = true
vim.o.background = "dark"

require "plugins"

-- NERDTree
-- vim.keymap.set("n", "<C-t>", "<cmd>NERDTreeToggle<CR>", {})
-- vim.keymap.set("c", "<Tab>", "wildmenu", { silent = false })

-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
--Replace <YOUR_LSP_SERVER> with each lsp server you"ve enabled.

