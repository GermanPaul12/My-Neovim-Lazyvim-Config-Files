return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"danielfalk/smart-open.nvim",
				branch = "0.2.x",
				config = function()
					require("telescope").load_extension("fzy_native")
					require("telescope").load_extension("smart_open")
				end,
				dependencies = {
					"kkharji/sqlite.lua",
					{ "nvim-telescope/telescope-fzy-native.nvim" },
				},
			},
		},
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set(
				"n",
				"<leader><leader>",
				require("telescope").extensions.smart_open.smart_open,
				{ desc = "Find Files with Fuzzy in all directories" }
			)
			vim.keymap.set(
				"n",
				"<leader>ff",
				builtin.find_files,
				{ desc = "Find Files with Fuzzy in current directory" }
			)
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep Text in Files" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
}
