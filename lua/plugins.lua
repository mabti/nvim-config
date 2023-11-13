local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

function status_line_setup() 
    return require("lualine").setup()
end

require("lazy").setup({
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = status_line_setup
    },
    { 
        "nvim-treesitter/nvim-treesitter",
        build = (function() 
            vim.cmd "TSUpdate"
        end),
        config = require("treesitter") 
    },
    {
        'VonHeikemen/lsp-zero.nvim', 
        branch = 'v3.x',
        config = require("lsp_setup"),
        dependencies = {
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/nvim-cmp'},
            {'L3MON4D3/LuaSnip'},
        }
    },
    {
        "folke/tokyonight.nvim",
        opts = {},
        config = function() 
            vim.cmd[[colorscheme tokyonight-moon]]
        end
    },
    {
        "tpope/vim-fugitive",
        --config = require("fugitive")
    },
    "ThePrimeagen/vim-be-good",
    {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.4',
        -- config = require("telescope_conf"),
        dependencies = { 'nvim-lua/plenary.nvim' }
    }
})

