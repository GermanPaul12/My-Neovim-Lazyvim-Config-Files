return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		{
			"windwp/nvim-ts-autotag",
			ft = { "javascript", "typescript", "html", "css" },
			opts = {},
		},
	},
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			auto_install = true,
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"javascript",
				"html",
				"python",
				"go",
				"rust",
				"dockerfile",
				"css",
				"csv",
				"bibtex",
				"bash",
				"typst",
				"latex",
				"markdown",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
