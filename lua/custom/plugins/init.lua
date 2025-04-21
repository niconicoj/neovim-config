return {
	{
		"mikesmithgh/borderline.nvim",
		enabled = true,
		lazy = true,
		event = "VeryLazy",
		config = function()
			require("borderline").setup({})
		end,
	},
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		-- Optional; default configuration will be used if setup isn't called.
		config = function()
			require("everforest").setup({
				background = "medium",
				italics = true,
				transparent_background_level = 2,
				on_highlights = function(hl, palette)
					hl.DiagnosticError = { fg = palette.none, bg = palette.none, sp = palette.red }
					hl.DiagnosticWarn = { fg = palette.none, bg = palette.none, sp = palette.yellow }
					hl.DiagnosticInfo = { fg = palette.none, bg = palette.none, sp = palette.blue }
					hl.DiagnosticHint = { fg = palette.none, bg = palette.none, sp = palette.green }
				end,
			})
			vim.cmd("colorscheme everforest")
		end,
	},
	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = {},
	},
	{
		"github/copilot.vim",
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		keys = {
			{ "<leader>T", ":ToggleTerm size=10 direction=horizontal<CR>", desc = "Open [T]erminal", silent = true },
		},
		config = true,
	},
	{
		"akinsho/nvim-bufferline.lua",
		version = "*",
		dependencies = "kyazdani42/nvim-web-devicons",
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				on_attach = function(bufnr)
					local api = require("nvim-tree.api")

					api.config.mappings.default_on_attach(bufnr)
					--vim.keymap.set("n", "l", api.node.open.edit)
				end,
			})
		end,
		keys = {
			{ "<leader>e", ":NvimTreeToggle<CR>", desc = "Open [E]xplorer", silent = true },
		},
	},
	{
		"kndndrj/nvim-dbee",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		build = function()
			-- Install tries to automatically detect the install method.
			-- if it fails, try calling it with one of these parameters:
			--    "curl", "wget", "bitsadmin", "go"
			require("dbee").install()
		end,
		config = function()
			require("dbee").setup()
		end,
		keys = {
			{ "<leader>db", ":Dbee toggle<CR>", desc = "Toggle [D]bee", silent = true },
		},
	},
}

-- vim: ts=2 sts=2 sw=2 et
