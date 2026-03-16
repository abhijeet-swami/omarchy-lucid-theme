local M = {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = function()
				vim.cmd("set termguicolors")
				local c = {
					bg = "#1c1e24",
					bg_dim = "#18191f",
					bg_subtle = "#2a2b34",
					bg_float = "#20222a",
					fg = "#c8cde0",
					fg_dim = "#9094a0",
					fg_muted = "#6a6e7a",
					blue = "#5b9cf0",
					blue_dim = "#82b8ff",
					cyan = "#3ec8c0",
					cyan_bright = "#60ddd8",
					green = "#5ec47a",
					green_dim = "#78d98e",
					yellow = "#d4a84b",
					yellow_dim = "#e8c060",
					magenta = "#a87ee8",
					magenta_dim = "#c49dff",
					red = "#d95f6e",
					red_dim = "#e87070",
					selection_bg = "#2a2b34",
					selection_fg = "#c8cde0",
					border = "#a87ee8",
					cursor = "#5b9cf0",
				}

				vim.cmd("highlight clear")
				if vim.fn.exists("syntax_on") then
					vim.cmd("syntax reset")
				end
				vim.g.colors_name = "liquid-glass"

				local function hl(group, opts)
					vim.api.nvim_set_hl(0, group, opts)
				end

				hl("Normal", { fg = c.fg, bg = c.bg })
				hl("NormalFloat", { fg = c.fg, bg = c.bg_float })
				hl("NormalNC", { fg = c.fg_dim, bg = c.bg })
				hl("CursorLine", { bg = c.bg_subtle })
				hl("CursorColumn", { bg = c.bg_subtle })
				hl("ColorColumn", { bg = c.bg_subtle })
				hl("LineNr", { fg = c.fg_muted })
				hl("CursorLineNr", { fg = c.blue, bold = true })
				hl("SignColumn", { fg = c.fg_muted, bg = c.bg })
				hl("FoldColumn", { fg = c.fg_muted, bg = c.bg })
				hl("Folded", { fg = c.fg_dim, bg = c.bg_subtle, italic = true })
				hl("Cursor", { fg = c.bg, bg = c.cursor })
				hl("lCursor", { fg = c.bg, bg = c.cursor })
				hl("CursorIM", { fg = c.bg, bg = c.cursor })
				hl("Visual", { bg = c.selection_bg })
				hl("VisualNOS", { bg = c.bg_subtle })
				hl("Search", { fg = c.bg, bg = c.blue_dim })
				hl("IncSearch", { fg = c.bg, bg = c.blue, bold = true })
				hl("CurSearch", { link = "IncSearch" })
				hl("StatusLine", { fg = c.fg, bg = c.bg_subtle })
				hl("StatusLineNC", { fg = c.fg_dim, bg = c.bg_subtle })
				hl("VertSplit", { fg = c.border })
				hl("WinSeparator", { fg = c.border })
				hl("TabLine", { fg = c.fg_dim, bg = c.bg })
				hl("TabLineFill", { bg = c.bg })
				hl("TabLineSel", { fg = c.bg, bg = c.blue, bold = true })
				hl("Pmenu", { fg = c.fg, bg = c.bg_float })
				hl("PmenuSel", { fg = c.bg, bg = c.blue, bold = true })
				hl("PmenuSbar", { bg = c.bg_subtle })
				hl("PmenuThumb", { bg = c.blue_dim })
				hl("FloatBorder", { fg = c.border, bg = c.bg_float })
				hl("FloatTitle", { fg = c.blue, bg = c.bg_float, bold = true })
				hl("ModeMsg", { fg = c.green, bold = true })
				hl("MoreMsg", { fg = c.green })
				hl("WarningMsg", { fg = c.yellow })
				hl("ErrorMsg", { fg = c.red })
				hl("Question", { fg = c.cyan })
				hl("MatchParen", { fg = c.cyan, bold = true, underline = true })
				hl("Comment", { fg = c.fg_muted, italic = true })
				hl("Todo", { fg = c.bg, bg = c.yellow, bold = true })
				hl("Constant", { fg = c.magenta })
				hl("String", { fg = c.cyan })
				hl("Character", { fg = c.cyan_bright })
				hl("Number", { fg = c.yellow })
				hl("Boolean", { fg = c.red, bold = true })
				hl("Float", { fg = c.yellow })
				hl("Identifier", { fg = c.fg })
				hl("Function", { fg = c.green, bold = true })
				hl("Statement", { fg = c.blue, bold = true })
				hl("Conditional", { fg = c.blue })
				hl("Repeat", { fg = c.blue })
				hl("Label", { fg = c.cyan })
				hl("Operator", { fg = c.cyan })
				hl("Keyword", { fg = c.blue, bold = true })
				hl("Exception", { fg = c.red })
				hl("PreProc", { fg = c.yellow_dim })
				hl("Include", { fg = c.yellow_dim })
				hl("Macro", { fg = c.magenta_dim })
				hl("Define", { fg = c.yellow_dim })
				hl("Type", { fg = c.yellow, italic = true })
				hl("StorageClass", { fg = c.red_dim })
				hl("Structure", { fg = c.yellow })
				hl("Typedef", { fg = c.yellow })
				hl("Special", { fg = c.cyan })
				hl("SpecialChar", { fg = c.cyan_bright })
				hl("Tag", { fg = c.magenta })
				hl("Delimiter", { fg = c.fg_dim })
				hl("Debug", { fg = c.red })
				hl("Underlined", { underline = true })
				hl("Ignore", { fg = c.fg_muted })
				hl("Error", { fg = c.red, bold = true })
				hl("Title", { fg = c.blue, bold = true })
				hl("Directory", { fg = c.cyan })
				hl("DiagnosticError", { fg = c.red })
				hl("DiagnosticWarn", { fg = c.yellow })
				hl("DiagnosticInfo", { fg = c.cyan })
				hl("DiagnosticHint", { fg = c.green })
				hl("DiagnosticOk", { fg = c.green })
				hl("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
				hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.yellow })
				hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.cyan })
				hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.green })
				hl("DiagnosticVirtualTextError", { fg = c.red, bg = c.bg_dim, italic = true })
				hl("DiagnosticVirtualTextWarn", { fg = c.yellow, bg = c.bg_dim, italic = true })
				hl("DiagnosticVirtualTextInfo", { fg = c.cyan, bg = c.bg_dim, italic = true })
				hl("DiagnosticVirtualTextHint", { fg = c.green, bg = c.bg_dim, italic = true })
				hl("@text", { link = "Normal" })
				hl("@comment", { link = "Comment" })
				hl("@punctuation", { fg = c.fg_dim })
				hl("@punctuation.bracket", { fg = c.fg_dim })
				hl("@punctuation.delimiter", { fg = c.fg_dim })
				hl("@constant", { link = "Constant" })
				hl("@constant.builtin", { fg = c.red, bold = true })
				hl("@constant.macro", { fg = c.magenta_dim })
				hl("@string", { link = "String" })
				hl("@string.escape", { fg = c.cyan_bright })
				hl("@character", { link = "Character" })
				hl("@number", { link = "Number" })
				hl("@boolean", { link = "Boolean" })
				hl("@float", { link = "Float" })
				hl("@function", { link = "Function" })
				hl("@function.builtin", { fg = c.green_dim, bold = true })
				hl("@function.macro", { fg = c.magenta_dim })
				hl("@method", { link = "Function" })
				hl("@constructor", { fg = c.magenta })
				hl("@keyword", { link = "Keyword" })
				hl("@keyword.function", { link = "Keyword" })
				hl("@keyword.operator", { fg = c.cyan })
				hl("@keyword.return", { fg = c.blue, italic = true })
				hl("@conditional", { link = "Conditional" })
				hl("@repeat", { link = "Repeat" })
				hl("@exception", { link = "Exception" })
				hl("@type", { link = "Type" })
				hl("@type.builtin", { fg = c.cyan, bold = true })
				hl("@type.definition", { fg = c.yellow })
				hl("@variable", { fg = c.fg })
				hl("@variable.builtin", { fg = c.red, bold = true, italic = true })
				hl("@parameter", { fg = c.yellow_dim, italic = true })
				hl("@field", { fg = c.cyan })
				hl("@property", { fg = c.cyan })
				hl("@tag", { fg = c.blue })
				hl("@tag.attribute", { fg = c.yellow })
				hl("@tag.delimiter", { fg = c.fg_dim })
				hl("@namespace", { fg = c.cyan })
				hl("@operator", { fg = c.cyan })
				hl("@label", { fg = c.cyan })
				hl("@text.uri", { fg = c.green, underline = true })
				hl("@text.reference", { fg = c.blue, underline = true })
				hl("@text.title", { link = "Title" })
				hl("@text.strong", { bold = true })
				hl("@text.emphasis", { italic = true })
				hl("@text.literal", { fg = c.cyan })
				hl("@text.todo", { link = "Todo" })
				hl("GitSignsAdd", { fg = c.green })
				hl("GitSignsChange", { fg = c.yellow })
				hl("GitSignsDelete", { fg = c.red })
				hl("DiffAdd", { bg = "#1a2e1a" })
				hl("DiffChange", { bg = "#1a1f2e" })
				hl("DiffDelete", { bg = "#2e1a1a" })
				hl("DiffText", { bg = "#243050", bold = true })
				hl("CmpItemAbbr", { fg = c.fg })
				hl("CmpItemAbbrMatch", { fg = c.blue, bold = true })
				hl("CmpItemAbbrMatchFuzzy", { fg = c.blue_dim })
				hl("CmpItemKindFunction", { fg = c.green })
				hl("CmpItemKindMethod", { fg = c.green })
				hl("CmpItemKindKeyword", { fg = c.blue })
				hl("CmpItemKindVariable", { fg = c.fg })
				hl("CmpItemKindField", { fg = c.cyan })
				hl("CmpItemKindModule", { fg = c.yellow })
				hl("CmpItemKindSnippet", { fg = c.magenta })
				hl("CmpItemMenu", { fg = c.fg_muted, italic = true })
				hl("TelescopeBorder", { fg = c.border, bg = c.bg_float })
				hl("TelescopeNormal", { fg = c.fg, bg = c.bg_float })
				hl("TelescopeSelection", { bg = c.selection_bg })
				hl("TelescopeMatching", { fg = c.blue, bold = true })
				hl("TelescopePromptPrefix", { fg = c.blue })
				hl("WhichKey", { fg = c.blue })
				hl("WhichKeyGroup", { fg = c.cyan })
				hl("WhichKeyDesc", { fg = c.fg })
				hl("WhichKeySeparator", { fg = c.fg_muted })
				hl("WhichKeyFloat", { bg = c.bg_float })
				hl("WhichKeyBorder", { fg = c.border, bg = c.bg_float })
			end,
		},
	},
}

return M
