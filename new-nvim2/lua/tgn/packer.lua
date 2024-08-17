-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
	use 'wbthomason/packer.nvim'

	--use {
	--        'nvim-telescope/telescope.nvim', tag = '0.1.8',
	--        -- or                            , branch = '0.1.x',
	--        requires = { {'nvim-lua/plenary.nvim'} }
	--}
	--
	use { "ibhagwan/fzf-lua",
		-- optional for icon support
		requires = { "nvim-tree/nvim-web-devicons" }
		-- or if using mini.icons/mini.nvim
		-- requires = { "echasnovski/mini.icons" }
	}
	use {
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	}

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use('nvim-treesitter/playground')
	use {
		'theprimeagen/harpoon',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use('mbbill/undotree')

	-- LSP
	use { 'VonHeikemen/lsp-zero.nvim', branch = 'v4.x' };
	use('neovim/nvim-lspconfig')
	use('hrsh7th/cmp-nvim-lsp')
	use('hrsh7th/nvim-cmp');
	use('williamboman/mason.nvim')
	use('williamboman/mason-lspconfig.nvim')
	use { "ray-x/lsp_signature.nvim" }
end)