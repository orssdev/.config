return {
    { 'tpope/vim-fugitive' },
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
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = function()
            require('nvim-autopairs').setup({})
            local cmp_autopairs = require('nvim-autopairs.completion.cmp')
            local cmp = require('cmp')
            cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
        end,
    },
}
