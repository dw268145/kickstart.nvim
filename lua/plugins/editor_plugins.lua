return {


  -- detect tabstop and shiftwidth automatically
  { 'tpope/vim-sleuth' },


  -- useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim',  opts = {} },


  -- colorscheme
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'gruvbox'
    end,
  },


  -- set lualine as statusline
  {
    'nvim-lualine/lualine.nvim',
    -- see `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        theme = 'onedark',
        component_separators = '|',
        section_separators = '',
      },
    },
  },


}

