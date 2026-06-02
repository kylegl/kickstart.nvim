-- Fix commenting in Vue files with embedded languages
-- Uses treesitter to detect the correct comment string based on cursor position

return {
  'JoosepAlviste/nvim-ts-context-commentstring',
  config = function()
    require('ts_context_commentstring').setup {
      -- Integration with Comment.nvim (if you ever install it)
      -- For now, this works with built-in Neovim commenting (gcc, gc)
      -- The plugin automatically calculates commentstring on CursorHold
      -- Your updatetime is set to 250ms in init.lua, which is perfect

      -- You can customize commentstrings for specific languages if needed
      -- commentstring = {
      --   javascript = '// %s',
      --   css = '/* %s */',
      --   html = '<!-- %s -->',
      -- },
    }
  end,
}
