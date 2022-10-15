local nvimtree = require('nvim-tree')

nvimtree.setup({
  open_on_setup = true,
  ignore_buffer_on_setup = true,
  view = {
    side = "right",
    preserve_window_proportions = true,
  },
  actions = {
    open_file = {
      window_picker = {
        chars = "ASDFGHJKL"
      },
    },
  },
})

require('keymapper').register({
  D = {
    nvimtree.toggle, "Toggle NvimTree"
  },
}, { prefix = "<leader>" })
