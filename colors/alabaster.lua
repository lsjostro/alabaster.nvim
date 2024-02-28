vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "alabaster"

local theme
---@diagnostic disable: undefined-global
if vim.o.background == "dark" then
	-- Nord color scheme values
	local nord = {
		fg = "#D8DEE9",
		bg = "#2E3440",
		selection_fg = "#000000",
		selection_bg = "#FFFACD",
		url_color = "#0087BD",
		cursor = "#81A1C1",
		black = "#3B4252",
		bright_black = "#4C566A",
		red = "#BF616A",
		bright_red = "#BF616A",
		green = "#A3BE8C",
		bright_green = "#A3BE8C",
		yellow = "#EBCB8B",
		bright_yellow = "#EBCB8B",
		blue = "#81A1C1",
		bright_blue = "#81A1C1",
		magenta = "#B48EAD",
		bright_magenta = "#B48EAD",
		cyan = "#88C0D0",
		bright_cyan = "#8FBCBB",
		white = "#E5E9F0",
		bright_white = "#ECEFF4",
	}

	-- terminal colors
	vim.g.terminal_color_0 = nord.black
	vim.g.terminal_color_1 = nord.red
	vim.g.terminal_color_2 = nord.green
	vim.g.terminal_color_3 = nord.yellow
	vim.g.terminal_color_4 = nord.blue
	vim.g.terminal_color_5 = nord.magenta
	vim.g.terminal_color_6 = nord.cyan
	vim.g.terminal_color_7 = nord.white
	vim.g.terminal_color_8 = nord.bright_black
	vim.g.terminal_color_9 = nord.bright_red
	vim.g.terminal_color_10 = nord.bright_green
	vim.g.terminal_color_11 = nord.bright_yellow
	vim.g.terminal_color_12 = nord.bright_blue
	vim.g.terminal_color_13 = nord.bright_magenta
	vim.g.terminal_color_14 = nord.bright_cyan
	vim.g.terminal_color_15 = nord.bright_white

	-- Overide noice highlight groups
	vim.api.nvim_set_hl(0, "NotifyERRORBorder", { fg = nord.red })
	vim.api.nvim_set_hl(0, "NotifyERRORIcon", { fg = nord.red })
	vim.api.nvim_set_hl(0, "NotifyERRORTitle", { fg = nord.red })

	vim.api.nvim_set_hl(0, "NotifyWARNBorder", { fg = nord.yellow })
	vim.api.nvim_set_hl(0, "NotifyWARNIcon", { fg = nord.yellow })
	vim.api.nvim_set_hl(0, "NotifyWARNTitle", { fg = nord.yellow })

	vim.api.nvim_set_hl(0, "NotifyINFOBorder", { fg = nord.blue })
	vim.api.nvim_set_hl(0, "NotifyINFOIcon", { fg = nord.blue })
	vim.api.nvim_set_hl(0, "NotifyINFOTitle", { fg = nord.blue })

	vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", { fg = "#3b4252" })
	vim.api.nvim_set_hl(0, "NotifyDEBUGIcon", { fg = "#d8dee9" })
	vim.api.nvim_set_hl(0, "NotifyDEBUGTitle", { fg = "#d8dee9" })

	vim.api.nvim_set_hl(0, "NotifyTRACEBorder", { fg = nord.magenta })
	vim.api.nvim_set_hl(0, "NotifyTRACEIcon", { fg = nord.magenta })
	vim.api.nvim_set_hl(0, "NotifyTRACETitle", { fg = nord.magenta })

	-- colors
	-- local bg = nord.bg
	local bg = "#1f232b"
	local fg = nord.fg
	local punct_fg = nord.bright_white
	local def_fg = nord.blue
	local const_fg = nord.magenta
	local active = nord.yellow
	local string_fg = nord.green
	local darker_fg = nord.bright_black
	local diffadd = nord.green
	local diffdelete = nord.red
	local diffchange = nord.yellow
	local statusline = nord.bright_black
	local comment = nord.bright_yellow
	local dim_comment = "#616E88"
	local mistake = {
		fg = nord.red,
		bg = nord.bg,
	}
	local error = nord.red
	local warn = nord.yellow
	local hint = nord.blue
	local info = nord.green
	local ansi = {
		black = nord.black,
		blue = nord.blue,
		brightyellow = nord.bright_yellow,
		cyan = nord.cyan,
		green = nord.green,
		magenta = nord.magenta,
		red = nord.red,
		white = nord.white,
		yellow = nord.yellow,
	}
	local comment_fg = vim.g.alabaster_dim_comments and dim_comment or comment
	local pmenu_bg = nord.black
	local float_bg = vim.g.alabaster_floatborder and bg or pmenu_bg
	local floatborder = vim.g.alabaster_floatborder and { bg = bg, fg = nord.bright_black }
		or {
			bg = float_bg,
			fg = float_bg,
		}
	theme = {
		Comment = { fg = comment_fg },
		ColorColumn = { bg = nord.selection_bg },
		Conceal = { fg = nord.bright_black },
		Cursor = { bg = active, fg = nord.black },
		CursorColumn = { bg = pmenu_bg },
		CursorLine = { bg = pmenu_bg },
		Directory = { fg = nord.blue },
		DiffAdd = { bg = nord.bright_green, fg = nord.green },
		DiffDelete = { bg = nord.bright_red, fg = nord.red },
		DiffText = { fg = nord.bright_yellow, bg = nord.yellow },
		DiffChange = { bg = "NONE", fg = nord.yellow },
		EndOfBuffer = { fg = nord.bright_black },
		TermCursorNC = { fg = bg, bg = fg },
		ErrorMsg = { fg = error, bg = mistake.bg },
		VertSplit = { fg = nord.bright_black },
		Folded = { bg = pmenu_bg, fg = nord.bright_black },
		FoldColumn = { bg = bg, fg = nord.black },
		SignColumn = {},
		IncSearch = { bg = nord.yellow, fg = bg },
		LineNr = { fg = nord.bright_black },
		CursorLineNr = { fg = nord.blue, bold = 1 },
		MatchParen = { underline = 1, sp = active },
		MoreMsg = { fg = nord.green, bold = 1 },
		NonText = { fg = nord.bright_black },
		Normal = { bg = bg, fg = fg },
		NormalFloat = { bg = float_bg },
		FloatBorder = floatborder,
		Pmenu = { bg = pmenu_bg },
		PmenuSel = { bg = nord.bright_black },
		PmenuSbar = { bg = nord.bright_black },
		PmenuThumb = { bg = nord.bright_blue },
		Question = { fg = diffadd },
		QuickFixLine = { bg = pmenu_bg },
		Search = { bg = nord.bright_black },
		SpecialKey = { fg = nord.cyan },
		SpellBad = { undercurl = 1, sp = nord.red },
		SpellCap = { undercurl = 1, sp = nord.blue },
		SpellLocal = { undercurl = 1, sp = nord.cyan },
		SpellRare = { undercurl = 1, sp = nord.magenta },
		StatusLine = { bg = statusline, fg = fg },
		StatusLineNC = { bg = statusline, fg = nord.bright_black },
		TabLine = { bg = statusline, fg = nord.bright_black },
		TabLineFill = { bg = statusline },
		TabLineSel = { bg = statusline, fg = nord.blue },
		Title = { fg = const_fg },
		Visual = { bg = nord.bright_black },
		VisualNOS = { bg = nord.bright_black },
		WarningMsg = { fg = nord.yellow },
		WildMenu = { bg = nord.bright_black },
		WinBar = { bg = bg, fg = nord.white, bold = true },
		WinBarNC = { bg = bg, fg = nord.bright_black },

		-- Syntax groups (shortened for brevity, apply Nord colors as needed)
		Constant = { fg = const_fg },
		String = { fg = string_fg },
		Character = { fg = const_fg },
		Number = { fg = const_fg },
		Boolean = { fg = const_fg },
		Float = { fg = const_fg },
		Operator = { fg = punct_fg },

		--- SYNTAX II: TS groups have their own definition, the below are defined to have somewhat working hl w/o treesitter
		Identifier = { fg = ansi.white },
		Function = { fg = def_fg },
		Statement = { fg = ansi.white },
		Conditional = { fg = ansi.white },
		Repeat = { fg = ansi.white },
		Label = { fg = def_fg },
		Keyword = { fg = ansi.white },
		Exception = { fg = ansi.white },
		PreProc = { fg = ansi.white },
		Include = { fg = ansi.white },
		Define = { fg = ansi.white },
		Macro = { fg = ansi.white },
		PreCondit = { fg = ansi.white },
		Type = { fg = ansi.white },
		StorageClass = { fg = ansi.white },
		Structure = { fg = def_fg },
		Typedef = { fg = def_fg },

		Special = { fg = ansi.cyan },
		-- TODO better color than diffchange, try reddish
		-- SpecialChar = { fg = diffchange }, --  special character in a constant
		-- Tag            { }, --    you can use CTRL-] on this
		-- Delimiter      { },
		SpecialComment = { bg = nord.bright_black, fg = ansi.blue },
		debugPc = { bg = nord.bright_black },
		debugBreakpoint = { bg = nord.red },
		helpHyperTextJump = { fg = ansi.magenta },
		helpSectionDelim = { fg = ansi.magenta },
		helpExample = { fg = ansi.cyan },
		helpCommand = { fg = ansi.cyan },
		helpHeadline = { fg = ansi.blue },
		helpHeader = { fg = ansi.magenta },

		Underlined = { underline = 1 }, -- (preferred) text that stands out, HTML links
		Italic = { italic = 1 },

		-- ("Ignore", below, may be invisible...)
		-- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { bg = mistake.bg, fg = mistake.fg },

		Todo = { bg = nord.yellow, fg = bg },

		--- Diagnostic
		LspReferenceText = { bg = nord.black },
		LspReferenceRead = { bg = nord.black },
		LspReferenceWrite = { bg = nord.bright_black, underline = 1, sp = active },
		LspCodeLens = { fg = nord.black },
		LspCodeLensSeparator = { fg = nord.black },

		DiagnosticError = { fg = error },
		DiagnosticWarn = { fg = warn },
		DiagnosticHint = { fg = hint },
		DiagnosticInfo = { fg = info },
		DiagnosticVirtualTextError = { bg = "NONE", fg = nord.bright_red },
		DiagnosticVirtualTextWarn = { bg = "NONE", fg = nord.bright_yellow },
		DiagnosticVirtualTextHint = { bg = "NONE", fg = nord.bright_blue },
		DiagnosticVirtualTextInfo = { bg = "NONE", fg = nord.bright_green },

		--- Treesitter
		TSAttribute = {},
		TSConstructor = { fg = ansi.white },
		TSConditional = { fg = ansi.white },
		TSConstBuiltin = { fg = const_fg },
		TSConstMacro = { fg = ansi.white },
		TSError = { bg = mistake.bg, fg = mistake.fg },
		TSException = { fg = ansi.white },
		TSField = { fg = ansi.white },
		TSFunction = { fg = ansi.white },
		TSFuncBuiltin = { fg = ansi.white },
		TSFuncMacro = { fg = ansi.white },
		TSKeyword = { fg = ansi.white },
		TSKeywordFunction = { fg = ansi.white },
		TSLabel = { fg = ansi.white },
		TSMethod = { fg = ansi.white },
		TSNamespace = { fg = ansi.white },
		TSNone = { fg = const_fg },
		TSParameter = { fg = ansi.white },
		TSParameterReference = { fg = ansi.white },
		TSProperty = { fg = ansi.white },
		TSPunctDelimiter = { fg = punct_fg },
		TSPunctBracket = { fg = nord.white },
		TSPunctSpecial = { fg = punct_fg },
		TSRepeat = { fg = ansi.white },
		TSString = { fg = string_fg },
		TSStringRegex = { bg = nord.bright_black, fg = const_fg },
		TSStringEscape = { bg = nord.bright_black, fg = const_fg },
		TSSymbol = {},
		TSType = { fg = ansi.white },
		TSTypeBuiltin = { fg = ansi.white },
		TSVariable = { fg = ansi.white },
		TSVariableBuiltin = { fg = ansi.white },
		TSTag = { fg = ansi.white },
		TSTagDelimiter = { fg = punct_fg },
		TSText = { fg = ansi.white },
		["@attribute"] = {},
		["@constructor"] = { fg = ansi.white },
		["@conditional"] = { fg = ansi.white },
		["@constant.builtin"] = { fg = const_fg },
		["@constant.macro"] = { fg = ansi.white },
		["@error"] = { bg = mistake.bg, fg = mistake.fg },
		["@exception"] = { fg = ansi.white },
		["@field"] = { fg = ansi.white },
		["@function"] = { fg = ansi.white },
		["@function.builtin"] = { fg = ansi.white },
		["@function.macro"] = { fg = ansi.white },
		["@keyword"] = { fg = ansi.white },
		["@keyword.function"] = { fg = ansi.white },
		["@label"] = { fg = ansi.white },
		["@method"] = { fg = ansi.white },
		["@namespace"] = { fg = ansi.white },
		["@none"] = { fg = const_fg },
		["@parameter"] = { fg = ansi.white },
		["@parameter.reference"] = { fg = ansi.white },
		["@property"] = { fg = ansi.white },
		["@punctuation.delimiter"] = { fg = punct_fg },
		["@punctuation.bracket"] = { fg = nord.white },
		["@punctuation.special"] = { fg = punct_fg },
		["@repeat"] = { fg = ansi.white },
		["@string"] = { fg = string_fg },
		["@string.regex"] = { bg = nord.bright_black, fg = const_fg },
		["@string.escape"] = { bg = nord.bright_black, fg = const_fg },
		["@symbol"] = {},
		["@type"] = { fg = ansi.white },
		["@type.builtin"] = { fg = ansi.white },
		["@variable"] = { fg = ansi.white },
		["@variable.builtin"] = { fg = ansi.white },
		["@tag"] = { fg = ansi.white },
		["@tag.delimiter"] = { fg = punct_fg },
		["@text"] = { fg = ansi.white },
		["@text.note"] = { bg = nord.bright_black, fg = ansi.blue },
		["@text.warning"] = { bg = nord.yellow, fg = nord.bg },

		--- Theme specific
		["@AlabasterConstant"] = { fg = const_fg },
		["@AlabasterDefinition"] = { fg = def_fg },
		["@AlabasterPunct"] = { fg = punct_fg },
		["@AlabasterString"] = { fg = string_fg },
		["@AlabasterHashbang"] = { fg = dim_comment },
		--- Gitsigns
		GitSignsAdd = { fg = diffadd },
		GitSignsChange = { fg = diffchange },
		GitSignsDelete = { fg = diffdelete },
		--- Telescope
		TelescopeBorder = { fg = nord.bright_black },
		TelescopeMatching = { fg = "#d08770" },
		TelescopeMultiSelection = { fg = ansi.magenta },
		TelescopePromptPrefix = { fg = ansi.blue },
		TelescopeSelectionCaret = { fg = ansi.white, bg = nord.bright_black },
		TelescopeTitle = { fg = ansi.brightyellow },
		TelescopeResultsTitle = { fg = ansi.yellow },
		--- fzf-lua
		FzfLuaBorder = { fg = nord.bright_black },
		--- Neogit
		NeogitPopupActionDisabled = { fg = darker_fg },
		NeogitPopupActionKey = { fg = ansi.magenta },
		NeogitPopupOptionDisabled = { fg = darker_fg },
		NeogitPopupOptionKey = { fg = ansi.blue },
		NeogitPopupSwitchDisabled = { fg = darker_fg },
		NeogitPopupSwitchEnabled = { fg = ansi.cyan },
		NeogitPopupSwitchKey = { fg = ansi.magenta },
		--- Fugitive
		diffAdded = { link = "DiffAdd" },
		diffRemoved = { link = "DiffDelete" },
		--- Startify
		StartifyBracket = { fg = darker_fg },
		StartifyFile = { fg = ansi.white },
		StartifySection = { fg = ansi.green },
		StartifySlash = { fg = nord.bright_black },
		StartifyPath = { fg = nord.bright_black },
		--- Statusline
		StatuslineAdd = { fg = diffadd, bg = statusline },
		StatuslineErr = { fg = error, bg = statusline },
		StatuslineHint = { fg = hint, bg = statusline },
		StatuslineInfo = { fg = info, bg = statusline },
		StatuslineWarn = { fg = warn, bg = statusline },
		StatuslineBlue = { fg = ansi.blue, bg = statusline },
		StatuslineRed = { fg = ansi.red, bg = statusline },
		StatuslineGreen = { fg = ansi.green, bg = statusline },
		StatuslineCyan = { fg = ansi.cyan, bg = statusline },
		StatuslineMagenta = { fg = ansi.magenta, bg = statusline },
		--- ALE
		ALEWarningSign = { fg = warn },
		--- vim-matchup
		MatchupVirtualText = { fg = ansi.yellow },
		--- For `highlight link`
		AlabasterBlack = { fg = ansi.black },
		AlabasterBlue = { fg = ansi.blue },
		AlabasterBrightYellow = { fg = ansi.brightyellow },
		AlabasterCyan = { fg = ansi.cyan },
		AlabasterGreen = { fg = ansi.green },
		AlabasterDarkGreen = { fg = ansi.green },
		AlabasterMagenta = { fg = ansi.magenta },
		AlabasterRed = { fg = ansi.red },
		AlabasterWhite = { fg = ansi.white },
		AlabasterYellow = { fg = ansi.yellow },
		--- Hop
		HopNextKey = { fg = ansi.brightyellow },
		HopNextKey1 = { fg = ansi.cyan },
		HopNextKey2 = { fg = ansi.cyan },
		HopUnmatched = { fg = nord.bright_black },
		--- Lightspeed
		LightspeedGreyWash = { fg = nord.bright_black },
		--- checkhealth
		healthSuccess = { fg = ansi.green, bg = bg },
		--- cmp
		CmpItemMenuDefault = { fg = ansi.magenta },
		--- nvim-ts-rainbow
		rainbowcol1 = { fg = ansi.yellow },
		rainbowcol2 = { fg = ansi.magenta },
		rainbowcol3 = { fg = ansi.blue },
		rainbowcol4 = { fg = ansi.green },
		rainbowcol5 = { fg = ansi.brightyellow },
		rainbowcol6 = { fg = ansi.red },
		rainbowcol7 = { fg = ansi.cyan },
		--- Iswap
		ISwapSnipe = { bg = ansi.yellow, fg = bg },
		ISwapGrey = { fg = nord.bright_black },
		--- vim-dadbod-ui
		dbui_help = { fg = dim_comment },
		dbui_connection_source = { fg = dim_comment },
		--- nvim-dap-virtual-text
		NvimDapVirtualText = { bg = nord.bright_black, fg = ansi.cyan },
		--- Noice
		NoiceCmdlinePopupTitle = { link = "AlabasterYellow" },
		NoiceCmdlineIcon = { link = "AlabasterYellow" },
		NoiceCmdlinePopupBorder = { link = "AlabasterYellow" },
		NoiceConfirmBorder = { link = "AlabasterYellow" },
		NoiceCmdlinePopupBorderCmdline = { link = "AlabasterYellow" },
		NoiceCmdlineIconCmdline = { link = "AlabasterYellow" },
		NoiceCmdlinePopupBorderFilter = { link = "AlabasterYellow" },
		NoiceCmdlineIconFilter = { link = "AlabasterYellow" },
		NoiceCmdlinePopupBorderLua = { link = "AlabasterYellow" },
		NoiceCmdlineIconLua = { link = "AlabasterYellow" },
		NoiceCmdlinePopupBorderSearch = { link = "AlabasterYellow" },
		NoiceCmdlineIconSearch = { link = "AlabasterYellow" },
		-- Languages
		--- asm
		asmDirective = { fg = dim_comment },
		nasmLabel = { link = "@AlabasterDefinition" },
	}
else
	-- terminal colors
	vim.g.terminal_color_0 = "#000000"
	vim.g.terminal_color_1 = "#aa3731"
	vim.g.terminal_color_2 = "#448c27"
	vim.g.terminal_color_3 = "#cb9000"
	vim.g.terminal_color_4 = "#325cc0"
	vim.g.terminal_color_5 = "#7a3e9d"
	vim.g.terminal_color_6 = "#0083b2"
	vim.g.terminal_color_7 = "#f7f7f7"
	vim.g.terminal_color_8 = "#777777"
	vim.g.terminal_color_9 = "#f05050"
	vim.g.terminal_color_10 = "#60cb00"
	vim.g.terminal_color_11 = "#ffbc5d"
	vim.g.terminal_color_12 = "#007acc"
	vim.g.terminal_color_13 = "#e64ce6"
	vim.g.terminal_color_14 = "#00aacb"
	vim.g.terminal_color_15 = "#f7f7f7"

	-- colors
	local bg = "#f7f7f7"
	local fg = "#000000"
	local punct_fg = "#777777"
	local def_fg = "#325cc0"
	local const_fg = "#7a3e9d"
	local active = "#ffbc5d"
	local active_blue = "#007acc"
	local string_fg = "#448c27"
	local darker_fg = "#7d7d7d"
	local diffadd = "#284918"
	local diffdelete = "#B40600"
	local diffchange = "#ec8013"
	local statusline = "#c9c9c9"
	local comment = "#aa3731"
	local dim_comment = "#696969"
	local mistake = {
		fg = "#c33c33",
		bg = "#f8b28f",
	}
	local ansi = {
		black = "#000000",
		blue = "#325cc0",
		brightyellow = "#ffbc5d",
		cyan = "#0083b2",
		green = "#448c27",
		magenta = "#7a3e9d",
		red = "#aa3731",
		white = "#f7f7f7",
		yellow = "#cb9000",
	}
	local error = "#d13e23"
	local warn = "#BC7500"
	local hint = ansi.blue
	local info = "#278C00"
	local comment_fg = vim.g.alabaster_dim_comments and dim_comment or comment
	local pmenu_bg = "#e7e7e7"
	local float_bg = vim.g.alabaster_floatborder and bg or pmenu_bg
	local floatborder = vim.g.alabaster_floatborder and { bg = bg, fg = "#999999" }
		or {
			bg = float_bg,
			fg = float_bg,
		}
	theme = {
		Comment = { fg = comment_fg },
		ColorColumn = { bg = "#E2EEEE" },
		Conceal = { fg = "#b0b0b0" },
		Cursor = { bg = "#007acc", fg = "#bfdbfe" },
		-- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = "#E2EEEE" },
		CursorLine = { bg = "#E2EEEE" },
		Directory = { fg = ansi.blue },
		DiffAdd = { bg = "#ADFFB7", fg = "#0A7816" },
		DiffDelete = { bg = "#F8B28F", fg = "#872C28" },
		DiffText = { fg = "#fff987", bg = "#876004" },
		DiffChange = { bg = "#fff987", fg = "#341a00" },
		EndOfBuffer = { fg = "#b6b6b6" },
		-- TermCursor   { }, -- cursor in a focused terminal
		TermCursorNC = { fg = bg, bg = fg },
		ErrorMsg = { fg = error, bg = mistake.bg },
		VertSplit = { fg = "#abbdc0" },
		Folded = { bg = "#dddddd", fg = "#7d7d7d" },
		FoldColumn = { bg = bg, fg = "#4d4d4d" },
		SignColumn = {},
		IncSearch = { bg = active, fg = fg },
		-- Substitute   { }, -- |:substitute| replacement text highlighting
		LineNr = { fg = "#7d7c7c" },
		CursorLineNr = { fg = ansi.blue, bold = 1 },
		MatchParen = { underline = 1, sp = active },
		-- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea      { }, -- Area for messages and cmdline
		-- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = ansi.green, bold = 1 },
		NonText = { fg = "#696969" },
		Normal = { bg = bg, fg = fg },
		NormalFloat = { bg = float_bg },
		-- NormalNC     { }, -- normal text in non-current windows
		FloatBorder = floatborder,
		Pmenu = { bg = pmenu_bg },
		PmenuSel = { bg = "#c7c7c7" },
		PmenuSbar = { bg = "#777777" },
		PmenuThumb = { bg = "#333333" },
		Question = { fg = ansi.green },
		QuickFixLine = { bg = "#E2EEEE" },
		Search = { bg = "#fae9b7", fg = fg },
		SpecialKey = { fg = ansi.cyan },
		SpellBad = { undercurl = 1, sp = ansi.red },
		SpellCap = { undercurl = 1, sp = ansi.blue },
		SpellLocal = { undercurl = 1, sp = ansi.cyan },
		SpellRare = { undercurl = 1, sp = ansi.magenta },
		StatusLine = { bg = statusline, fg = fg },
		StatusLineNC = { bg = statusline, fg = "#9f9f9f" },
		TabLine = { bg = statusline, fg = "#7d7d7d" },
		TabLineFill = { bg = statusline },
		TabLineSel = { bg = statusline, fg = ansi.blue },
		Title = { fg = const_fg },
		Visual = { bg = "#bfdbfe" },
		VisualNOS = { bg = "#bfdbfe" },
		WarningMsg = { fg = "#e1ad4c" },
		WildMenu = { bg = "#999999" },
		WinBar = { bg = bg, fg = ansi.black, bold = true },
		WinBarNC = { bg = bg, fg = "#7d7d7d" },

		--- SYNTAX I: TS groups link to these
		Constant = { fg = const_fg },
		String = { fg = string_fg },
		Character = { fg = const_fg },
		Number = { fg = const_fg },
		Boolean = { fg = const_fg },
		Float = { fg = const_fg },
		Operator = { fg = punct_fg },

		--- SYNTAX II: TS groups have their own definition, the below are defined to have somewhat working hl w/o treesitter
		Identifier = { fg = ansi.black },
		Function = { fg = def_fg },
		Statement = { fg = ansi.black },
		Conditional = { fg = ansi.black },
		Repeat = { fg = ansi.black },
		Label = { fg = def_fg },
		Keyword = { fg = ansi.black },
		Exception = { fg = ansi.black },
		PreProc = { fg = ansi.black },
		Include = { fg = ansi.black },
		Define = { fg = ansi.black },
		Macro = { fg = ansi.black },
		PreCondit = { fg = ansi.black },
		Type = { fg = ansi.black },
		StorageClass = { fg = ansi.black },
		Structure = { fg = def_fg },
		Typedef = { fg = def_fg },

		Special = { fg = ansi.yellow },
		-- TODO better color than diffchange, try reddish
		-- SpecialChar = { fg = diffchange }, --  special character in a constant
		-- Tag            { }, --    you can use CTRL-] on this
		-- Delimiter      { },
		SpecialComment = { bg = "#FFDEAA", fg = ansi.blue },
		debugPc = { bg = "#C7C7EE" },
		debugBreakpoint = { bg = "#F8B28F" },
		helpHyperTextJump = { fg = ansi.magenta },
		helpSectionDelim = { fg = ansi.magenta },
		helpExample = { fg = ansi.cyan },
		helpCommand = { fg = ansi.cyan },
		helpHeadline = { fg = ansi.blue },
		helpHeader = { fg = ansi.magenta },

		Underlined = { underline = 1 }, -- (preferred) text that stands out, HTML links
		Italic = { italic = 1 },

		-- ("Ignore", below, may be invisible...)
		-- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { bg = mistake.bg, fg = mistake.fg },

		Todo = { bg = "#FFDEAA", fg = ansi.blue },

		--- Diagnostic
		LspReferenceText = { bg = "#dadada" },
		LspReferenceRdad = { bg = "#dadada" },
		LspReferenceWrite = { bg = "#dadada", underline = 1, sp = active_blue },
		LspCodeLens = { fg = "#999999" },
		LspCodeLensSeparator = { fg = "#999999" },

		--- Diagnostic
		DiagnosticError = { fg = error },
		DiagnosticWarn = { fg = warn },
		DiagnosticHint = { fg = hint },
		DiagnosticInfo = { fg = info },
		DiagnosticVirtualTextError = { bg = "#F8B28F", fg = "#411414" },
		DiagnosticVirtualTextWarn = { bg = "#fff987", fg = fg },
		DiagnosticVirtualTextHint = { fg = "#0F171D", bg = "#C3D0DA" },
		DiagnosticVirtualTextInfo = { bg = "#ADFFB7", fg = "#042F09" },

		--- Treesitter
		TSAttribute = {},
		TSConstructor = { fg = ansi.black },
		TSConditional = { fg = ansi.black },
		TSConstBuiltin = { fg = const_fg },
		TSConstMacro = { fg = ansi.black },
		TSError = { bg = mistake.bg, fg = mistake.fg },
		TSException = { fg = ansi.black },
		TSField = { fg = ansi.black },
		TSFunction = { fg = ansi.black },
		TSFuncBuiltin = { fg = ansi.black },
		TSFuncMacro = { fg = ansi.black },
		TSKeyword = { fg = ansi.black },
		TSKeywordFunction = { fg = ansi.black },
		TSLabel = { fg = ansi.black },
		TSMethod = { fg = ansi.black },
		TSNamespace = { fg = ansi.black },
		TSNone = { fg = const_fg },
		TSParameter = { fg = ansi.black },
		TSParameterReference = { fg = ansi.black },
		TSProperty = { fg = ansi.black },
		TSPunctDelimiter = { fg = punct_fg },
		TSPunctBracket = { fg = punct_fg },
		TSPunctSpecial = { fg = punct_fg },
		TSRepeat = { fg = ansi.black },
		TSString = { fg = string_fg },
		TSStringRegex = { bg = bg, fg = "#777777" },
		TSStringEscape = { bg = bg, fg = "#777777" },
		TSSymbol = {},
		TSType = { fg = ansi.black },
		TSTypeBuiltin = { fg = ansi.black },
		TSVariable = { fg = ansi.black },
		TSVariableBuiltin = { fg = ansi.black },
		TSTag = { fg = ansi.black },
		TSTagDelimiter = { fg = punct_fg },
		TSText = { fg = ansi.black },

		["@attribute"] = {},
		["@constructor"] = { fg = ansi.black },
		["@conditional"] = { fg = ansi.black },
		["@constant.builtin"] = { fg = const_fg },
		["@constant.macro"] = { fg = ansi.black },
		["@error"] = { bg = mistake.bg, fg = mistake.fg },
		["@exception"] = { fg = ansi.black },
		["@field"] = { fg = ansi.black },
		["@function"] = { fg = ansi.black },
		["@function.builtin"] = { fg = ansi.black },
		["@function.macro"] = { fg = ansi.black },
		["@keyword"] = { fg = ansi.black },
		["@keyword.function"] = { fg = ansi.black },
		["@label"] = { fg = ansi.black },
		["@method"] = { fg = ansi.black },
		["@namespace"] = { fg = ansi.black },
		["@none"] = { fg = const_fg },
		["@parameter"] = { fg = ansi.black },
		["@parameter.reference"] = { fg = ansi.black },
		["@property"] = { fg = ansi.black },
		["@punctuation.delimiter"] = { fg = punct_fg },
		["@punctuation.bracket"] = { fg = punct_fg },
		["@punctuation.special"] = { fg = punct_fg },
		["@repeat"] = { fg = ansi.black },
		["@string"] = { fg = string_fg },
		["@string.regex"] = { bg = bg, fg = "#777777" },
		["@string.escape"] = { bg = bg, fg = "#777777" },
		["@symbol"] = {},
		["@type"] = { fg = ansi.black },
		["@type.builtin"] = { fg = ansi.black },
		["@variable"] = { fg = ansi.black },
		["@variable.builtin"] = { fg = ansi.black },
		["@tag"] = { fg = ansi.black },
		["@tag.delimiter"] = { fg = punct_fg },
		["@text"] = { fg = ansi.black },
		["@text.note"] = { bg = "#dddddd", fg = ansi.blue },
		["@text.warning"] = { bg = "#FFDEAA", fg = ansi.blue },

		--- Theme specific
		["@AlabasterConstant"] = { fg = const_fg },
		["@AlabasterDefinition"] = { fg = def_fg },
		["@AlabasterPunct"] = { fg = punct_fg },
		["@AlabasterString"] = { fg = string_fg },
		["@AlabasterHashbang"] = { fg = dim_comment },
		--- Gitsigns
		GitSignsAdd = { fg = "#6abf40" },
		GitSignsChange = { fg = diffchange },
		GitSignsDelete = { fg = diffdelete },
		--- Telescope
		TelescopeBorder = { fg = "#abbdc0" },
		TelescopeMatching = { fg = "#CC6F14" },
		TelescopeMultiSelection = { fg = ansi.magenta },
		TelescopePromptPrefix = { fg = ansi.blue },
		TelescopeSelectionCaret = { fg = mistake.fg },
		TelescopeTitle = { fg = ansi.yellow },
		TelescopeResultsTitle = { fg = ansi.yellow },
		--- fzf-lua
		FzfLuaBorder = { fg = "#abbdc0" },
		--- Neogit
		NeogitPopupActionDisabled = { fg = darker_fg },
		NeogitPopupActionKey = { fg = ansi.magenta },
		NeogitPopupOptionDisabled = { fg = darker_fg },
		NeogitPopupOptionKey = { fg = ansi.blue },
		NeogitPopupSwitchDisabled = { fg = darker_fg },
		NeogitPopupSwitchEnabled = { fg = ansi.cyan },
		NeogitPopupSwitchKey = { fg = ansi.magenta },
		--- Fugitive
		diffAdded = { link = "DiffAdd" },
		diffRemoved = { link = "DiffDelete" },
		--- Startify
		StartifyBracket = { fg = darker_fg },
		StartifyFile = { fg = ansi.black },
		StartifySection = { fg = ansi.green },
		StartifySlash = { fg = "#4e6e75" },
		StartifyPath = { fg = "#4e6e75" },
		--- Statusline
		StatuslineAdd = { fg = diffadd, bg = statusline },
		StatuslineErr = { fg = "#8E1410", bg = statusline },
		StatuslineHint = { fg = hint, bg = statusline },
		StatuslineInfo = { fg = info, bg = statusline },
		StatuslineWarn = { fg = warn, bg = statusline },
		StatuslineBlue = { fg = ansi.blue, bg = statusline },
		StatuslineRed = { fg = ansi.red, bg = statusline },
		StatuslineGreen = { fg = ansi.green, bg = statusline },
		StatuslineCyan = { fg = ansi.cyan, bg = statusline },
		StatuslineMagenta = { fg = ansi.magenta, bg = statusline },
		--- ALE
		ALEWarningSign = { fg = warn },
		--- vim-matchup
		MatchupVirtualText = { fg = ansi.yellow },
		--- For `highlight link`
		AlabasterBlack = { fg = ansi.black },
		AlabasterBlue = { fg = ansi.blue },
		AlabasterBrightYellow = { fg = ansi.brightyellow },
		AlabasterCyan = { fg = ansi.cyan },
		AlabasterGreen = { fg = ansi.green },
		AlabasterBrightGreen = { fg = "#60cb00" },
		AlabasterMagenta = { fg = ansi.magenta },
		AlabasterRed = { fg = ansi.red },
		AlabasterWhite = { fg = ansi.black },
		AlabasterYellow = { fg = ansi.yellow },
		--- Hop
		HopNextKey = { fg = ansi.yellow },
		HopNextKey1 = { fg = ansi.blue },
		HopNextKey2 = { fg = "#17A2D6" },
		HopUnmatched = { fg = "#bfbfbf" },
		--- Lightspeed
		LightspeedGreyWash = { fg = "#bfbfbf" },
		--- checkhealth
		healthSuccess = { fg = ansi.green, bg = bg },
		--- cmp
		CmpItemMenuDefault = { fg = ansi.magenta },
		--- nvim-ts-rainbow
		rainbowcol1 = { fg = ansi.yellow },
		rainbowcol2 = { fg = ansi.magenta },
		rainbowcol3 = { fg = ansi.blue },
		rainbowcol4 = { fg = ansi.green },
		rainbowcol5 = { fg = ansi.brightyellow },
		rainbowcol6 = { fg = ansi.red },
		rainbowcol7 = { fg = ansi.cyan },
		--- Iswap
		ISwapSnipe = { bg = ansi.yellow, fg = bg },
		ISwapGrey = { fg = "#bfbfbf" },
		--- vim-dadbod-ui
		dbui_help = { fg = dim_comment },
		dbui_connection_source = { fg = dim_comment },
		--- nvim-dap-virtual-text
		NvimDapVirtualText = { bg = "#78D2C9", fg = fg },
		--- Noice
		NoiceCmdlineIcon = { link = "AlabasterBrightGreen" },
		NoiceCmdlinePopupBorder = { link = "AlabasterBrightGreen" },
		NoiceConfirmBorder = { link = "AlabasterBrightGreen" },
		NoiceCmdlinePopupBorderCmdline = { link = "AlabasterBrightGreen" },
		NoiceCmdlineIconCmdline = { link = "AlabasterBrightGreen" },
		NoiceCmdlinePopupBorderFilter = { link = "AlabasterBrightGreen" },
		NoiceCmdlineIconFilter = { link = "AlabasterBrightGreen" },
		NoiceCmdlinePopupBorderLua = { link = "AlabasterBrightGreen" },
		NoiceCmdlineIconLua = { link = "AlabasterBrightGreen" },
		NoiceCmdlinePopupBorderSearch = { link = "AlabasterYellow" },
		NoiceCmdlineIconSearch = { link = "AlabasterYellow" },
		-- Languages
		--- asm
		asmDirective = { fg = dim_comment },
		nasmLabel = { link = "@AlabasterDefinition" },
	}
end

for group, hl in pairs(theme) do
	vim.api.nvim_set_hl(0, group, hl)
end

-- vi:nowrap
