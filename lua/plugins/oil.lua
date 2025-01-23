return {
	"stevearc/oil.nvim",
	config = function()
		local oil = require("oil")
		oil.setup({
			view_options = {
				show_hidden = true,
			},
			skip_confirm_for_simple_edits = true,
		})
		vim.keymap.set("n", "-", oil.toggle_float, { desc = "Open oil" })
		vim.keymap.set("n", "<Leader>-", oil.close, { desc = "Close oil" })
	end,
}
