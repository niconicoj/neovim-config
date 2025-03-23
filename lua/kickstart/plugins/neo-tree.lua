-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "<leader>e", ":Neotree toggle<CR>", desc = "File explorer", silent = true },
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					["<leader>e"] = "close_window",
					["l"] = "open",
					["h"] = "close_node",
				},
			},
		},
	},
}
-- vim: ts=2 sts=2 sw=2 et
