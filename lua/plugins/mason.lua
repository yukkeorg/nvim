return {
    {
        "mason-org/mason.nvim",
        build = ":MasonUpdate",
        opts = {},
    },
    {
        "neovim/nvim-lspconfig",
        event = {
            "BufReadPre",
            "BUfNewFile",
        },
        config = function()
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim" },
            { "neovim/nvim-lspconfig" },
        },
        events = { "BufReadPre", "BufNewFile" },
        contruefig = true
    },
}
