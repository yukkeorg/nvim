return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        event = { "BufReadPost", "BufNewFile" },
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter").setup({
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
            })

            local group = vim.api.nvim_create_augroup("TSGroup", { clear = true })

            vim.api.nvim_create_autocmd("FileType", {
                group = group,
                callback = function()
                    pcall(vim.treesitter.start)
                end,
            })
        end,
    }
}
