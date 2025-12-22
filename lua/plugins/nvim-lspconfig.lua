return {
    "neovim/nvim-lspconfig",
    event = {
        "BufReadPre",
        "BUfNewFile",
    },
    config = function()
        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = {
                            "vim"
                        }
                    }
                }
            }
        })
    end,
}
