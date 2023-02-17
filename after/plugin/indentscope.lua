local indentscope = require('mini.indentscope')
indentscope.setup({
    draw = {
        delay = 0,
        animation = indentscope.gen_animation.none() },
    symbol = '│',
})
vim.api.nvim_set_hl(0, 'MiniIndentscopeSymbol', { fg="#3c3836" })
--vim.api.nvim_set_hl(0, 'MiniIndentscopeSymbol', { fg="#32374d" })
