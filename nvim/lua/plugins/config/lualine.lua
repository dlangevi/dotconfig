require('lualine').setup({
  options = {
    theme = 'horizon',
  },
  winbar = {
    lualine_b = { 'filetype' },
    lualine_c = {
      { 'filename', }
    },
  },
  inactive_winbar = {
    lualine_b = { 'filetype' },
    lualine_c = { 'filename' },
  }
})
