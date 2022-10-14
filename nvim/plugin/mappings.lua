-- Keybindings
vim.keymap.set('n', "<c-h>", '<CMD>NavigatorLeft<CR>')
vim.keymap.set('n', "<c-l>", '<CMD>NavigatorRight<CR>')
vim.keymap.set('n', "<c-k>", '<CMD>NavigatorUp<CR>')
vim.keymap.set('n', "<c-j>", '<CMD>NavigatorDown<CR>')
vim.keymap.set('n', "<c-p>", '<CMD>NavigatorPrevious<CR>')
vim.keymap.set('n', '--', ':edit<Space>#<cr>')

-- Some way of doing this automatically would be nice when in nvim lua files
vim.keymap.set('n', '<leader><leader>s', '<cmd>source %<cr>')

-- Easy quit
vim.keymap.set('n', 'q', ':q<CR>')
