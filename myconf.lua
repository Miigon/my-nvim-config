
vim.o.background = 'dark'


local isVsCode = require('vscode').setup == nil -- otherwise require vscode will return the theme
if not isVsCode then
    local c = require('vscode.colors').get_colors()

    require('vscode').setup({
        transparent = true,
        italic_comments = true,
        disable_nvimtree_bg = true,

        color_overrides = {
            -- vscLineNumber = '#FFFFFF',
        },
    })
    require('vscode').load()
end