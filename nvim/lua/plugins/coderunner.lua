-- code running
return {
  'CRAG666/code_runner.nvim',
  dependencies = 'nvim-lua/plenary.nvim',
  config = function()
    require('code_runner').setup({
      -- put here the commands by filetype
      filetype = {
        python = "python3 -u",
        typescript = "deno run",
        rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
      },
    })
  end
}
