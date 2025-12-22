local function setup_lualine()
    require('lualine').setup({
        options = {
            theme = 'codedark'
        }
    })
end

return {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
        setup_lualine()

        vim.api.nvim_create_autocmd({ 'WinEnter', 'WinResized' }, {
            callback = function()
                setup_lualine()
            end,
        })
    end,
    event = 'VeryLazy'
}
