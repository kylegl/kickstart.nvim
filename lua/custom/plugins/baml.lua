-- BAML syntax highlighting and filetype support
-- This plugin provides:
-- - Syntax highlighting for .baml files
-- - Tree-sitter integration for advanced highlighting
-- - Filetype detection
-- - Optional formatting on save using baml-cli

return {
  {
    'klepp0/nvim-baml-syntax',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      -- This registers the "baml" parser and configures Tree-sitter
      require('baml_syntax').setup {
        format_on_save = false, -- Set to true if you want auto-formatting on save
        -- baml_cli_path = '/path/to/baml-cli', -- Optional: specify path if not on PATH
      }
    end,
  },
}
