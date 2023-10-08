return {

  {
    -- add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- enable `lukas-reineke/indent-blankline.nvim`
    -- see `:help indent_blankline.txt`
    -- config = function()
    --   require('ibl').setup {
    --     char = '┊',
    --     show_trailing_blankline_indent = false,
    --   }
    -- end,
  },

  -- "gc" to comment visual regions/lines
  { 'numtostr/comment.nvim', opts = {} },


  -- autopairs
  {
    "windwp/nvim-autopairs",
    -- optional dependency
    dependencies = { 'hrsh7th/nvim-cmp' },
    config = function()
      require("nvim-autopairs").setup {}
      -- if you want to automatically add `(` after selecting a function or method
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp = require('cmp')
      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )
    end,
  },

}

