return {

  -- lsp configuration & plugins
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      -- automatically install lsps to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- useful status updates for lsp
      -- note: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim',       tag = 'legacy', opts = {} },

      -- additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },


  -- autcompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      -- snippet engine & its associated nvim-cmp source
      'l3mon4d3/luasnip',
      'saadparwaiz1/cmp_luasnip',

      -- adds lsp completion capabilities
      'hrsh7th/cmp-nvim-lsp',

      -- adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
    },
  },



  -- diagnostics
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
    },
  },

}

