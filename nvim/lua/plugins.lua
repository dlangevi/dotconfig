vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'tpope/vim-surround'
	use 'liuchengxu/vim-clap'
	use { 'numToStr/Navigator.nvim',
	    config = function()
		require('Navigator').setup()
	    end }
end)
