return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "clangd",
                    "cmake",
                    "cssls",
                    "html",
                    "bashls",
                    "ast_grep",
                    "pyright",
                    "jinja_lsp",
                    "dockerls",
                    "gopls",
                    "hyprls",
                    "jsonls",
                    "ltex",
                    "ruff",
                    "rust_analyzer",
                    "sqls",
                    "yamlls",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({
                settings = {
                    pyright = {
                        -- Using Ruff's import organizer
                        disableOrganizeImports = true,
                    },
                    python = {
                        analysis = {
                            -- Ignore all files for analysis to exclusively use Ruff for linting
                            ignore = { "*" },
                        },
                    },
                },
            })
            lspconfig.ruff.setup({})
            lspconfig.rust_analyzer.setup({})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Get definition" })
            vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Get code actions" })
        end,
    },
}

-- :h vim.lsp.buf
-- get help for lsp what commands or options are available
