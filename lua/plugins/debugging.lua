return {
	"mfussenegger/nvim-dap",
	ft = { "python", "rust" }, -- Load only when Python or Rust files are opened
	dependencies = {
		"rcarriga/nvim-dap-ui",
		{
			"mfussenegger/nvim-dap-python",
			ft = "python", -- Load this plugin only when a Python file is opened
			config = function()
				require("dap-python").setup("uv")
			end,
		},
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		dapui.setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, { desc = "Add breakpoint for debugging" })
		vim.keymap.set("n", "<Leader>dc", dap.continue, { desc = "Continue to the next breakpoint (debugging)" })
	end,
}
