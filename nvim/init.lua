-- Basic Editor Settings
vim.opt.number = true             -- Show line numbers
vim.opt.relativenumber = true     -- Relative line numbers for easier jumping
vim.opt.mouse = 'a'               -- Enable mouse support
vim.opt.ignorecase = true         -- Case-insensitive searching
vim.opt.smartcase = true          -- Case-sensitive if search contains uppercase
vim.opt.hlsearch = false          -- Don't keep highlights after search
vim.opt.wrap = false              -- Don't wrap lines
vim.opt.breakindent = true        -- Maintain indent on wrapped lines
vim.opt.tabstop = 4               -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4            -- Size of an indent
vim.opt.expandtab = true          -- Use spaces instead of tabs
vim.opt.smartindent = true        -- Insert indents automatically
vim.opt.cursorline = true         -- Highlight the current line
vim.opt.termguicolors = true      -- Enable 24-bit RGB color
vim.opt.scrolloff = 8             -- Keep at least 8 lines above/below cursor
vim.opt.signcolumn = 'yes'        -- Always show sign column
vim.opt.updatetime = 250          -- Faster completion and diagnostic updates
vim.opt.timeoutlen = 300          -- Time to wait for a mapped sequence
vim.opt.completeopt = 'menuone,noselect'
vim.opt.clipboard = 'unnamedplus' -- Use system clipboard

-- Keybindings
vim.g.mapleader = ' '             -- Space as leader key
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>e', ':Lex 30<CR>', { desc = 'File Explorer' }) -- Built-in Netrw

-- Colorscheme: Retrobox (Built-in for Neovim 0.10+)
vim.cmd.colorscheme('retrobox')

-- Transparency: Remove background highlights
local function apply_transparency()
    local highlights = {
        "Normal",
        "NormalFloat",
        "NormalNC",
        "LineNr",
        "SignColumn",
        "StatusLine",
        "StatusLineNC",
        "EndOfBuffer",
        "Folded",
        "ColumnLimit",
    }
    for _, hl in ipairs(highlights) do
        vim.api.nvim_set_hl(0, hl, { bg = "none", ctermbg = "none" })
    end
end

-- Re-apply transparency after colorscheme changes
apply_transparency()

-- Autocommand to ensure transparency persists if colorscheme is reloaded
vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = apply_transparency,
})
