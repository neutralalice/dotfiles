return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- plugins here 
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
}
  use {
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
}
  require("mason").setup()
  require("mason-lspconfig").setup()
  require("mason-lspconfig").setup_handlers {
        function (server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {}
        end,
}
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup{}
  end
}
  use {
  'kylechui/nvim-surround',
  config = function()
    require("nvim-surround").setup{}
  end
}
end)
