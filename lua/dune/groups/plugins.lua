local M = {}

function M.get(c, opts)
  opts = opts or {}

  return {
    GitSignsAdd = { fg = c.green, bg = c.bg },
    GitSignsChange = { fg = c.accent, bg = c.bg },
    GitSignsDelete = { fg = c.red, bg = c.bg },
    GitSignsTopdelete = { fg = c.red, bg = c.bg },
    GitSignsChangedelete = { fg = c.yellow, bg = c.bg },
    MiniDiffSignAdd = { fg = c.green, bg = c.bg },
    MiniDiffSignChange = { fg = c.accent, bg = c.bg },
    MiniDiffSignDelete = { fg = c.red, bg = c.bg },

    BlinkCmpMenu = { fg = c.fg, bg = c.bg_popup },
    BlinkCmpMenuBorder = { fg = c.border, bg = c.bg_popup },
    BlinkCmpMenuSelection = { fg = c.selection_fg, bg = c.selection_bg, bold = true },
    BlinkCmpScrollBarGutter = { bg = c.bg_alt },
    BlinkCmpScrollBarThumb = { bg = c.border },
    BlinkCmpDoc = { fg = c.fg, bg = c.bg_float },
    BlinkCmpDocBorder = { fg = c.border, bg = c.bg_float },
    BlinkCmpDocSeparator = { fg = c.border, bg = c.bg_float },
    BlinkCmpLabel = { fg = c.fg },
    BlinkCmpLabelMatch = { fg = c.accent, bold = true },
    BlinkCmpLabelDetail = { fg = c.comment_alt },
    BlinkCmpLabelDescription = { fg = c.comment },
    BlinkCmpSource = { fg = c.comment_alt },
    BlinkCmpKind = { fg = c.accent },

    CmpItemAbbr = { fg = c.fg },
    CmpItemAbbrMatch = { fg = c.accent, bold = true },
    CmpItemMenu = { fg = c.comment_alt },
    CmpItemKind = { fg = c.accent },

    IblIndent = { fg = c.border, nocombine = true },
    IblWhitespace = { fg = c.border, nocombine = true },
    IblScope = { fg = c.fg_muted, nocombine = true },
    IndentBlanklineChar = { fg = c.border, nocombine = true },
    IndentBlanklineContextChar = { fg = c.fg_muted, nocombine = true },

    LazyNormal = { fg = c.fg, bg = c.bg_float },
    LazyButton = { fg = c.fg, bg = c.bg_alt },
    LazyButtonActive = { fg = c.selection_fg, bg = c.selection_bg, bold = true },
    LazyH1 = { fg = c.selection_fg, bg = c.selection_bg, bold = true },
    LazySpecial = { fg = c.accent },
    LazyReasonPlugin = { fg = c.yellow },
    LazyValue = { fg = c.green },
    LazyDir = { fg = c.comment_alt },

    MasonNormal = { fg = c.fg, bg = c.bg_float },
    MasonHeader = { fg = c.selection_fg, bg = c.selection_bg, bold = true },
    MasonHeaderSecondary = { fg = c.selection_fg, bg = c.accent, bold = true },
    MasonHighlight = { fg = c.accent },
    MasonHighlightBlock = { fg = c.selection_fg, bg = c.selection_bg },
    MasonHighlightBlockBold = { fg = c.selection_fg, bg = c.selection_bg, bold = true },
    MasonMuted = { fg = c.comment_alt },
    MasonMutedBlock = { fg = c.fg, bg = c.bg_alt },

    NoiceCmdlinePopup = { fg = c.fg, bg = c.bg_float },
    NoiceCmdlinePopupBorder = { fg = c.border, bg = c.bg_float },
    NoiceCmdlineIcon = { fg = c.accent },

    NeoTreeNormal = { fg = c.fg, bg = c.bg },
    NeoTreeNormalNC = { fg = c.fg, bg = c.bg },
    NeoTreeDirectoryName = { fg = c.accent },
    NeoTreeDirectoryIcon = { fg = c.cyan_dim },
    NeoTreeRootName = { fg = c.yellow, bold = true },
    NeoTreeGitAdded = { fg = c.green },
    NeoTreeGitModified = { fg = c.orange },
    NeoTreeGitDeleted = { fg = c.red },
    NeoTreeIndentMarker = { fg = c.border },
    NeoTreeFloatBorder = { fg = c.border, bg = c.bg_float },
    NeoTreeTitleBar = { fg = c.selection_fg, bg = c.selection_bg, bold = true },

    TelescopeNormal = { fg = c.fg, bg = c.bg_float },
    TelescopeBorder = { fg = c.border, bg = c.bg_float },
    TelescopeTitle = { fg = c.accent, bg = c.bg_float, bold = true },
    TelescopePromptNormal = { fg = c.fg, bg = c.bg_popup },
    TelescopePromptBorder = { fg = c.border, bg = c.bg_popup },
    TelescopePromptTitle = { fg = c.selection_fg, bg = c.selection_bg, bold = true },
    TelescopeResultsNormal = { fg = c.fg, bg = c.bg_float },
    TelescopeResultsBorder = { fg = c.border, bg = c.bg_float },
    TelescopePreviewNormal = { fg = c.fg, bg = c.bg_float },
    TelescopePreviewBorder = { fg = c.border, bg = c.bg_float },
    TelescopeSelection = { fg = c.selection_fg, bg = c.selection_bg, bold = true },
    TelescopeMatching = { fg = c.yellow, bold = true },

    TroubleNormal = { fg = c.fg, bg = c.bg_float },
    TroubleNormalNC = { fg = c.fg, bg = c.bg_float },
    TroubleText = { fg = c.fg },
    TroubleCount = { fg = c.selection_fg, bg = c.selection_bg },
    TroubleIndent = { fg = c.border },

    WhichKey = { fg = c.accent },
    WhichKeyGroup = { fg = c.purple },
    WhichKeyDesc = { fg = c.cyan_dim },
    WhichKeySeparator = { fg = c.border },
    WhichKeyValue = { fg = c.comment_alt },
  }
end

return M
