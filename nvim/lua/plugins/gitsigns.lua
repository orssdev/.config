return {
    {
        'lewis6991/gitsigns.nvim',
        opts = {
            on_attach = function(bufnr)
                local gs = require('gitsigns')
                local function map(l, r, desc)
                    vim.keymap.set('n', l, r, { buffer = bufnr, desc = desc })
                end

                map('<leader>gp', gs.preview_hunk_inline, 'Toggle hunk preview')
                map('<leader>gb', gs.toggle_current_line_blame, 'Toggle blame')
            end,
        },
    },
}
