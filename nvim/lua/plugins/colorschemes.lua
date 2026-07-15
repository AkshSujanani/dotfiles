return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				transparent = true,
				styles = {
					sidebars = "transparent",
					floats   = "transparent",
				}
			})
		end
	},

	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = false,
		priority = 1000,

		config = function()
			vim.g.moonflyTransparent = true
		end,
	},
}
