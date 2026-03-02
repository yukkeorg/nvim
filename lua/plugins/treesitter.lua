return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",
    opts = {
        ensure_installed = {
            "lua", "vim", "vimdoc",
            "javascript", "typescript", "tsx",
            "python", "go", "rust",
            "json", "yaml", "toml",
            "html", "css", "markdown",
        },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
    },
}
