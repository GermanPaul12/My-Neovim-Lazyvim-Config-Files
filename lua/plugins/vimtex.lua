return {
    "lervag/vimtex",
    ft = "tex",         -- Load VimTeX for TeX files
    lazy = true,        -- Enable lazy loading
    config = function() -- Use `config` instead of `init` for setting up
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_compiler_method = "latexmk"
    end,
}
