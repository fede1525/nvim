local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
     { "savq/melange-nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme melange")
        end,
    },
    "xero/miasma.nvim",
    --"savq/melange-nvim",
    "loctvl842/monokai-pro.nvim",
	"nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
	"nvim-treesitter/nvim-treesitter",
	"tpope/vim-fugitive",
	"VonHeikemen/lsp-zero.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"saadparwaiz1/cmp_luasnip",
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
    'nvim-lualine/lualine.nvim',
    'nvim-tree/nvim-web-devicons',
    'OmniSharp/omnisharp-vim',
    'nickspoons/vim-sharpenup',
    {'akinsho/toggleterm.nvim', version = "*", config = true}
}, opts)
