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
  },
  pickers = {
    -- TODO desired behaviour 
    -- If only one pane exists, vertical split
    -- If multiple pane exists and one is a help pane, replace its contents
    -- Otherwise replace current pane contents
    help_tags = {
      mappings = {
        i = {
          ["<CR>"] = "select_vertical",
        },
        n = {
          ["<CR>"] = "select_vertical",
        },
      },
    },
  },
}

telescope.setup(options)

local builtin = require('telescope.builtin')

require('keymapper').register({
  s = {
    name = "telescope",
    f = { builtin.find_files, "Find File" },
    p = { builtin.git_files, "Find git Files" },
    b = { builtin.buffers, "Find Buffer" },
    g = { builtin.live_grep, "Grep Project" },
    r = { builtin.resume, "Resume last Search" },
    h = { builtin.help_tags, "Search help tags" },
    w = { builtin.grep_string, "Search for word" },
  },
}, { prefix = "<leader>" })
