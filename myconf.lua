
vim.o.background = 'dark'

if not vim.fn.exists('g:vscode') then
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
