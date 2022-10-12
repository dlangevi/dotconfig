local present, telescope = pcall(require, "telescope")

if not present then
  return
end

local options = {
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
      }
    }
  }
}

telescope.setup(options)

local builtin = require('telescope.builtin')

local wk = require("which-key")
wk.register({
  f = {
    name = "telescope", 
    f = { builtin.find_files, "Find File" }, 
    p = { builtin.git_files, "Find git Files"},
    b = { builtin.buffers, "Find Buffer" },
    g = { builtin.live_grep, "Grep Project" },
    r = { builtin.resume, "Resume last Search" },
    h = { builtin.help_tags, "Search help tags"},
  },
}, { prefix = "<leader>" })
