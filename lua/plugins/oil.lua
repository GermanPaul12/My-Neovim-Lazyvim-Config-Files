return {
    "stevearc/oil.nvim",
    config = function()
        local oil = require("oil")
        oil.setup()
        vim.keymap.set("n", "-", oil.toggle_float, { desc = "Open oil" })
        vim.keymap.set("n", "<Leader>-", oil.close, { desc = "Close oil" })
    end,
}
