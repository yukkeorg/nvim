local my_group = vim.api.nvim_create_augroup("my_group", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
    group = my_group,
    pattern = {},
    callback = function()
    end,
})
