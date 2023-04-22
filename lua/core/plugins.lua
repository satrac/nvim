local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- colorschemes
    use('ellisonleao/gruvbox.nvim')
    use('sainnhe/everforest')
    use 'Mofiqul/dracula.nvim'    
    use({'rose-pine/neovim', as = 'rose-pine' })

    use('nvim-tree/nvim-tree.lua')
    use('nvim-tree/nvim-web-devicons')   
    use('nvim-lualine/lualine.nvim')

    use('ThePrimeagen/harpoon')
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/nvim-treesitter-context')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    
    
    -- LSP Support
    use ("williamboman/mason.nvim", { run = ":MasonUpdate" })
    use {'williamboman/mason-lspconfig.nvim'}
    use {'neovim/nvim-lspconfig'}

    -- Autocompletion
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'saadparwaiz1/cmp_luasnip'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-nvim-lua'}
    use {"glepnir/lspsaga.nvim"}

    -- Snippets
    -- use {'L3MON4D3/LuaSnip'}
    -- use {'rafamadriz/friendly-snippets'}
    
     use({
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    })

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
