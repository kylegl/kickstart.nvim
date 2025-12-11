-- Supermaven - AI-powered autocomplete similar to Windsurf/Copilot
return {
  'supermaven-inc/supermaven-nvim',
  config = function()
    require('supermaven-nvim').setup({
      keymaps = {
        accept_suggestion = '<Tab>',
        clear_suggestion = '<C-]>',
        accept_word = '<C-w>',
      },
      ignore_filetypes = {
        'prisma',
        'sql',
        'gitcommit',
        'gitrebase',
        'svn',
        'hgcommit',
      },
      disable_inline_completion = false,
      disable_keymaps = false,
    })
  end,
}