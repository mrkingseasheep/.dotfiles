return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		config = function()
			vim.opt.termguicolors = true
			vim.cmd.colorscheme("tokyonight")
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			load = {
				["core.defaults"] = {},
			},
		},
	},
}

