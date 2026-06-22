vim.cmd("highlight clear")
vim.g.colors_name = "ecopunk"

local p = {
  bg      = "#2E3424",
  surface = "#3D4A2E",
  border  = "#4A6A5A",
  muted   = "#4A6A5A",
  fg      = "#D4DEAF",
  comment = "#8A9A6B",
  accent  = "#A8C44C",
  green   = "#7A9A3E",
  error   = "#8B4A35",
  warn    = "#C4914C",
  none    = "NONE",
}

local hi = function(g, o) vim.api.nvim_set_hl(0, g, o) end

hi("Normal",       { fg = p.fg,     bg = p.bg })
hi("NormalFloat",  { fg = p.fg,     bg = p.surface })
hi("LineNr",       { fg = p.muted })
hi("CursorLineNr", { fg = p.accent, bold = true })
hi("CursorLine",   { bg = p.surface })
hi("SignColumn",   { bg = p.bg })
hi("VertSplit",    { fg = p.border })
hi("StatusLine",   { fg = p.fg,     bg = p.surface })
hi("StatusLineNC", { fg = p.muted,  bg = p.bg })
hi("Pmenu",        { fg = p.fg,     bg = p.surface })
hi("PmenuSel",     { fg = p.bg,     bg = p.accent })
hi("Search",       { fg = p.bg,     bg = p.accent })
hi("Visual",       { bg = p.border })
hi("Comment",      { fg = p.comment, italic = true })
hi("String",       { fg = p.green })
hi("Number",       { fg = p.accent })
hi("Keyword",      { fg = p.accent, bold = true })
hi("Function",     { fg = p.fg,     bold = true })
hi("Type",         { fg = p.green })
hi("Identifier",   { fg = p.fg })
hi("Operator",     { fg = p.comment })
hi("@keyword",     { fg = p.accent, bold = true })
hi("@string",      { fg = p.green })
hi("@comment",     { fg = p.comment, italic = true })
hi("@type",        { fg = p.green })
hi("@variable",    { fg = p.fg })
