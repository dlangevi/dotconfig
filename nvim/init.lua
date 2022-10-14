-- Globals?
vim.g.mapleader = " "

require('plugins')

vim.g.termguicolors = true
-- ??
vim.o.wildmode = "longest,list,full"
vim.o.wildmenu = true

vim.o.mouse = false
vim.o.swapfile = false
vim.o.foldenable = false
vim.o.undofile = false 
vim.o.relativenumber = true
vim.o.nu = true

vim.o.autoindent = true
vim.o.expandtab = true
vim.g.smartab = true
vim.o.softtabstop = 2
vim.o.tabstop = 2
vim.o.shiftwidth = 2

vim.o.laststatus = 3

-- Folds
vim.o.foldmethod = "syntax"
vim.o.foldlevel = 3
vim.o.shell = "/usr/bin/bash"
-- set verbose=1
vim.o.scrolloff = 10

require('Navigator').setup()
require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "c",
    "lua",
    "rust",
    "javascript",
    "typescript",
    "vue"
  },
  highlight = {
    enable = true,
    disable = function(_, buf)
      local max_filesize = 100 * 1024 -- 100 KB
      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max_filesize then
        return true
      end
    end,
    additional_vim_regex_highlighting = false,
  },
})


-- Keybindings
vim.keymap.set('n', "<c-h>", '<CMD>NavigatorLeft<CR>')
vim.keymap.set('n', "<c-l>", '<CMD>NavigatorRight<CR>')
vim.keymap.set('n', "<c-k>", '<CMD>NavigatorUp<CR>')
vim.keymap.set('n', "<c-j>", '<CMD>NavigatorDown<CR>')
vim.keymap.set('n', "<c-p>", '<CMD>NavigatorPrevious<CR>')
vim.keymap.set('n', '--', ':edit<Space>#<cr>')

-- Easy quit
vim.keymap.set('n', 'q', ':q<CR>')


vim.cmd [[colorscheme sonokai]]
