local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup({
    {
        "zaldih/themery.nvim",
        dependencies = { 
            "folke/tokyonight.nvim",
            "tanvirtin/monokai.nvim",
            "catppuccin/nvim",
            "rebelot/kanagawa.nvim",
            "ellisonleao/gruvbox.nvim",
            "bluz71/vim-nightfly-colors",
            "Mofiqul/dracula.nvim",
            "dasupradyumna/midnight.nvim",
        },
        config = function ()
            require("config.themery")
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function ()
            require("config.treesitter")
        end
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require("config.telescope")
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        event = "VeryLazy",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("config.nvim-tree")
        end,
    },
    "williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",   {
		"onsails/lspkind.nvim",
		event = { "VimEnter" },
	},
	-- Auto-completion engine
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"lspkind.nvim",
			"hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
			"hrsh7th/cmp-buffer", -- buffer auto-completion
			"hrsh7th/cmp-path", -- path auto-completion
			"hrsh7th/cmp-cmdline", -- cmdline auto-completion
		},
		config = function()
			require("config.nvim-cmp")
		end,
	},
	-- Code snippet engine
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
	},
})
