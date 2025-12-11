-- CSpell LSP - Full VS Code-like spell checking with code actions
return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        cspell_lsp = {
          settings = {
            cSpell = {
              -- Use project-level cspell configuration if available
              useConfigFile = true,
              -- Enable suggestions for misspelled words
              suggestions = true,
              -- Show diagnostics for spelling errors
              diagnostics = true,
              -- Check comments and strings
              checkOnlyEnabledFileTypes = false,
              -- File types to check
              enabledLanguageIds = {
                'javascript',
                'typescript',
                'javascriptreact',
                'typescriptreact',
                'python',
                'lua',
                'markdown',
                'text',
                'gitcommit',
                'yaml',
                'json',
                'sh',
                'bash',
              },
              -- Enable dictionaries based on file type
              languageSettings = {
                javascript = { dictionaries = {'javascript', 'typescript'} },
                typescript = { dictionaries = {'typescript', 'javascript'} },
                javascriptreact = { dictionaries = {'javascript', 'typescript', 'react'} },
                typescriptreact = { dictionaries = {'typescript', 'javascript', 'react'} },
                python = { dictionaries = {'python'} },
                lua = { dictionaries = {'lua'} },
                markdown = { dictionaries = {'markdown', 'html'} },
                yaml = { dictionaries = {'yaml'} },
                json = { dictionaries = {'json'} },
                sh = { dictionaries = {'bash', 'shellscript'} },
                bash = { dictionaries = {'bash', 'shellscript'} },
              },
              -- Global dictionaries to always include
              dictionaries = {
                'en_US',
                'en-gb',
                'companies',
                'softwareTerms',
                'typescript',
                'node',
                'html',
                'css',
                'python',
                'lua'
              },
            },
          },
        },
      },
    },
  },
}