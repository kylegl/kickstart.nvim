return {
  {
    'folke/tokyonight.nvim',
    config = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme 'herdr-gruvbox'
    end,
  },
}
