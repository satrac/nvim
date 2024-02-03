return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			--      vim.cmd.colorscheme "catppuccin"
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			-- vim.cmd.colorscheme "tokyonight"
			-- There are also colorschemes for the different styles.
			-- vim.cmd.colorscheme tokyonight-night
			-- vim.cmd.colorscheme tokyonight-storm
			-- vim.cmd.colorscheme tokyonight-day
			-- vim.cmd.colorscheme tokyonight-moon
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		config = function()
			-- vim.cmd.colorscheme "nightfox"
			--      vim.cmd.colorscheme "dayfox"
			--      vim.cmd.colorscheme "dawnfox"
			--      vim.cmd.colorscheme "duskfox"
			--      vim.cmd.colorscheme "nordfox"
			--      vim.cmd.colorscheme "terafox"
			--      vim.cmd.colorscheme "carbonfox"
		end,
	},
	{ "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
	{ "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
	{
		-- Theme inspired by Atom
		"navarasu/onedark.nvim",
		priority = 1000,
		lazy = false,
		config = function()
			require("onedark").setup({
				-- Set a style preset. 'dark' is default.
				style = "darker", -- dark, darker, cool, deep, warm, warmer, light
			})
			-- require('onedark').load()
		end,
	},
	{ "dracula/vim", name = "dracula" },
	{ "doums/darcula" },
	{ "romgrk/doom-one.vim", name = "doom-one" },
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = {} },
	{
		"neanias/everforest-nvim",
		priority = 1000,
		lazy = false,
		config = function()
			require("everforest").setup({
				background = "hard",
				italics = true,
				disable_italic_comments = false,
			})
		end,
	},
	{ "savq/melange-nvim", name = "melange" },
	{ "AlexvZyl/nordic.nvim", name = "nordic" },
	{ "Shatur/neovim-ayu", name = "ayu" },
	{ "blazkowolf/gruber-darker.nvim", name = "gruber-darker" },
	{ 'lmburns/kimbox' },
	{ "miikanissi/modus-themes.nvim", priority = 1000 },
	{ "kdheepak/monochrome.nvim" },
}
