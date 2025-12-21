return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSupdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      ensure_installed = {
        "lua", "vim", "vimdoc",
        "javascript", "typescript", "tsx",
        "python", "go", "rust",
        "json", "yaml", "toml",
        "html", "css", "markdown",
      },
    },
    highlight = { enable = true },
    indent = { enable = true },
}
