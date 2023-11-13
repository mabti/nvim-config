-- This file contains all keybinds
-- This helps keep all of them in one place

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Misc
vim.keymap.set("n", "<space>", "<Nop>")
vim.keymap.set("n", "<Leader>fv", vim.cmd.Ex) 
vim.keymap.set("n", "<Leader>ft", netrw_tree)

-- Fugitive Git
vim.keymap.set("n", "<Leader>gg", "Git")

-- Telescope
local tele = require("telescope.builtin")
vim.keymap.set("n", "<Leader>ff", tele.find_files, {})
vim.keymap.set("n", "<Leader>fg", tele.live_grep, {})
vim.keymap.set("n", "<Leader>fb", tele.buffers, {})
vim.keymap.set("n", "<Leader>fh", tele.help_tags, {})

