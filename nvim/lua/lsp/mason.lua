return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
		-- list of servers for mason to install
		ensure_installed = {
			"html",
			"clangd",
			"basedpyright",
			"bashls",
			"cssls",
			"lua_ls",
		}	
	},
    dependencies = {
        { "mason-org/mason.nvim", 
			opts = {
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_unistalled = "✗",
					}
				}
			} 
		},
        "neovim/nvim-lspconfig",
    },
}
