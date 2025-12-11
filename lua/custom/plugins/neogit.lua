return {
  -- Neogit for git integration
  {
    'NeogitOrg/neogit',
    dependencies = { 'sindrets/diffview.nvim' },
    config = function()
      require('neogit').setup {}

      -- Keymaps for Neogit
      vim.keymap.set('n', '<leader>gn', ':Neogit<CR>', { desc = 'Open Neogit' })
      vim.keymap.set('n', '<leader>gc', ':Neogit commit<CR>', { desc = 'Neogit commit' })
      vim.keymap.set('n', '<leader>gp', ':Neogit push<CR>', { desc = 'Neogit push' })
      vim.keymap.set('n', '<leader>gl', ':Neogit log<CR>', { desc = 'Neogit log' })
      vim.keymap.set('n', '<leader>ga', ':!git add .<CR>', { desc = 'Git add all' })
      vim.keymap.set('n', '<leader>shove', ':!git push --force-with-lease<CR>', { desc = 'Git push force with lease' })
    end,
  },
}