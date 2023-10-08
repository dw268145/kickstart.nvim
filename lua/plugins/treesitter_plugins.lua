return {


  -- highlight, edit, and navigate code
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':tsupdate',
  },


  { 'nvim-treesitter/nvim-treesitter-context' },


}
