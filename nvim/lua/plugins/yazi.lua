return {
    {
        'mikavilpas/yazi.nvim',
        version = '*',
        event = 'VeryLazy',
        dependencies = {
            { 'nvim-lua/plenary.nvim', lazy = true },
        },
        init = function()
            vim.g.loaded_netrwPlugin = 1
        end,
        opts = {
            open_for_directories = true,
        },
    },
}
