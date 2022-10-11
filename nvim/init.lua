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
vim.o.relativenumber = true
vim.o.nu = true

vim.o.autoindent = true
vim.o.expandtab = true
vim.o.smartab = true
vim.o.softtabstop = 2
vim.o.tabstop = 2
vim.o.shiftwidth = 2

-- Folds
vim.o.foldmethod = "syntax"
vim.o.foldlevel = 3
vim.o.shell = "/usr/bin/bash"
-- set verbose=1
vim.o.scrolloff = 10

require('coc')
require('Navigator').setup()
require('lualine').setup()
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
    disable = function(lang, buf)
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

vim.g.NERDTreeWinPos = "right"
vim.keymap.set('n', "<leader>t", ':NERDTreeToggle<CR>')

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fr', builtin.resume, {})

vim.cmd[[colorscheme sonokai]]
