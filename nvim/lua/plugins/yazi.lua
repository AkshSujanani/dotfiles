return {
	"mikavilpas/yazi.nvim",
	version = "*",			-- use the latest stable version
	event = "VeryLazy",
	dependencies = {
		{ "nvim-lua/plenary.nvim", lazy = true },
	},
	keys = {
		{
			"<leader>t",
			mode = { "n", "v" },
			"<cmd>Yazi<cr>",
			desc = "Open yazi at the current file",
		},
		{
			-- Open in the current working directory
			"<leader>tw",
			"<cmd>Yazi cwd<cr>",
			desc = "Open the file manager in nvim's working directory",
		},
		{
			"<leader>tu",
			"<cmd>Yazi toggle<cr>",
			desc = "Resume the last yazi session",
		},
	},

	opts = {
		open_for_directories = true,
		keymaps = { show_help = "<f1>", },
	},

	init = function()
		-- mark netrw as loaded so it's not loaded at all
		vim.g.loaded_netrwPlugin = 1
	end,
}
