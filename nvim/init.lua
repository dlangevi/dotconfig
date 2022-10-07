require('plugins')

-- Globals?
vim.g.mapleader = " "

-- What the actual fuck is going on here
vim.cmd ":set noswapfile"

-- ??
vim.o.wildmode = "longest,list,full"
vim.o.wildmenu = true

vim.o.mouse = false
vim.o.nofoldenable = true
vim.o.noundofile = true

-- Folds
vim.o.foldmethod = "syntax"
vim.o.foldlevel = 3
vim.o.shell = "/usr/bin/bash"
-- set verbose=1
vim.o.scrolloff = 10

require('Navigator').setup()

-- Keybindings
vim.keymap.set('n', "<c-h>", '<CMD>NavigatorLeft<CR>')
vim.keymap.set('n', "<c-l>", '<CMD>NavigatorRight<CR>')
vim.keymap.set('n', "<c-k>", '<CMD>NavigatorUp<CR>')
vim.keymap.set('n', "<c-j>", '<CMD>NavigatorDown<CR>')
vim.keymap.set('n', "<c-p>", '<CMD>NavigatorPrevious<CR>')

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<leader>f', ':Clap files<CR>')
