local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
        use 'wbthomason/packer.nvim'
        use 'tanvirtin/monokai.nvim'
        use 'nvim-tree/nvim-web-devicons'
        use 'nvim-tree/nvim-web-devicons'
        use 'nvim-lualine/lualine.nvim'
        use 'nvim-tree/nvim-tree.lua'
        use 'alexghergh/nvim-tmux-navigation'
        use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
        use 'mrjones2014/nvim-ts-rainbow'
        use "williamboman/mason.nvim"
        use "williamboman/mason-lspconfig.nvim"
        use "neovim/nvim-lspconfig"
        use "hrsh7th/nvim-cmp"
        use "hrsh7th/cmp-nvim-lsp"
        use "hrsh7th/cmp-path"
        use "windwp/nvim-autopairs"
        use "numToStr/Comment.nvim"
        use "akinsho/bufferline.nvim"
        use "lewis6991/gitsigns.nvim"
        use 'nvim-lua/plenary.nvim'
        use 'nvim-telescope/telescope.nvim'
        use "simrat39/rust-tools.nvim"
        use "akinsho/toggleterm.nvim"
        use "folke/which-key.nvim"

        if packer_bootstrap then
            require('packer').sync()
        end
    end)