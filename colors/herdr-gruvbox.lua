-- Palette from Pi's herdr-gruvbox theme. Kept local so Neovim works without Pi.
vim.opt.background = 'dark'
vim.cmd.highlight 'clear'
if vim.fn.exists 'syntax_on' == 1 then
  vim.cmd.syntax 'reset'
end
vim.g.colors_name = 'herdr-gruvbox'

local p = {
  bg = '#282828', raised = '#3c3836', selected = '#504945',
  fg = '#ebdbb2', muted = '#a89984', dim = '#7c6f64',
  red = '#fb4934', green = '#8ec07c', yellow = '#fabd2f',
  blue = '#83a598', purple = '#d3869b', orange = '#fe8019',
  added = '#483e29', removed = '#442b2b',
}

local groups = {
  Normal = { fg = p.fg, bg = p.bg },
  NormalNC = { link = 'Normal' },
  NormalFloat = { fg = p.fg, bg = p.raised },
  FloatBorder = { fg = p.dim, bg = p.raised },
  FloatTitle = { fg = p.yellow, bg = p.raised, bold = true },
  WinSeparator = { fg = p.selected },
  SignColumn = { fg = p.dim, bg = p.bg },
  LineNr = { fg = p.dim },
  CursorLineNr = { fg = p.yellow, bold = true },
  CursorLine = { bg = p.raised },
  CursorColumn = { link = 'CursorLine' },
  ColorColumn = { bg = p.raised },
  Cursor = { fg = p.bg, bg = p.yellow },
  Visual = { bg = p.selected },
  Search = { fg = p.fg, bg = p.selected },
  IncSearch = { fg = p.bg, bg = p.yellow },
  CurSearch = { link = 'IncSearch' },
  MatchParen = { fg = p.orange, bg = p.selected, bold = true },
  NonText = { fg = p.dim },
  Whitespace = { link = 'NonText' },
  EndOfBuffer = { fg = p.bg },
  Folded = { fg = p.muted, bg = p.raised },
  FoldColumn = { fg = p.dim },
  Pmenu = { fg = p.fg, bg = p.raised },
  PmenuSel = { fg = p.yellow, bg = p.selected },
  PmenuSbar = { bg = p.raised },
  PmenuThumb = { bg = p.dim },
  StatusLine = { fg = p.fg, bg = p.raised },
  StatusLineNC = { fg = p.muted, bg = p.bg },
  TabLine = { fg = p.muted, bg = p.raised },
  TabLineFill = { bg = p.bg },
  TabLineSel = { fg = p.yellow, bg = p.selected, bold = true },
  Title = { fg = p.yellow, bold = true },
  Directory = { fg = p.blue },
  Question = { fg = p.green },
  MoreMsg = { fg = p.green },
  ModeMsg = { fg = p.yellow },
  ErrorMsg = { fg = p.red },
  WarningMsg = { fg = p.yellow },
  Comment = { fg = p.dim },
  Constant = { fg = p.purple },
  String = { fg = p.green },
  Character = { link = 'String' },
  Number = { fg = p.purple },
  Boolean = { link = 'Number' },
  Float = { link = 'Number' },
  Identifier = { fg = p.blue },
  Function = { fg = p.green },
  Statement = { fg = p.red },
  Keyword = { fg = p.red },
  Operator = { fg = p.orange },
  PreProc = { fg = p.red },
  Type = { fg = p.yellow },
  Special = { fg = p.orange },
  Delimiter = { fg = p.fg },
  Todo = { fg = p.yellow, bg = p.raised, bold = true },
  Error = { fg = p.red },
  Underlined = { fg = p.green, underline = true },
  DiffAdd = { bg = p.added },
  DiffDelete = { bg = p.removed },
  DiffChange = { bg = p.raised },
  DiffText = { bg = p.selected },
  diffAdded = { fg = p.green },
  diffRemoved = { fg = p.red },
  diffChanged = { fg = p.yellow },
  GitSignsAdd = { fg = p.green },
  GitSignsChange = { fg = p.yellow },
  GitSignsDelete = { fg = p.red },
  DiagnosticError = { fg = p.red },
  DiagnosticWarn = { fg = p.yellow },
  DiagnosticInfo = { fg = p.blue },
  DiagnosticHint = { fg = p.green },
  SpellBad = { sp = p.red, undercurl = true },
  SpellCap = { sp = p.yellow, undercurl = true },
  SpellLocal = { sp = p.blue, undercurl = true },
  SpellRare = { sp = p.purple, undercurl = true },
  ['@variable'] = { link = 'Identifier' },
  ['@variable.builtin'] = { link = 'Identifier' },
  ['@property'] = { link = 'Identifier' },
  ['@punctuation'] = { link = 'Delimiter' },
  ['@markup.heading'] = { link = 'Title' },
  ['@markup.link'] = { link = 'Underlined' },
  ['@markup.link.url'] = { fg = p.dim, underline = true },
  ['@markup.raw'] = { fg = p.green },
  ['@markup.quote'] = { fg = p.muted },
  ['@markup.list'] = { fg = p.orange },
}

for name, value in pairs(groups) do
  vim.api.nvim_set_hl(0, name, value)
end

local terminal = {
  p.bg, p.red, p.green, p.yellow, p.blue, p.purple, p.green, p.muted,
  p.dim, p.red, p.green, p.yellow, p.blue, p.purple, p.green, p.fg,
}
for i, color in ipairs(terminal) do
  vim.g['terminal_color_' .. (i - 1)] = color
end
