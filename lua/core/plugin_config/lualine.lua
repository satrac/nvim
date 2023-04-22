require('lualine').setup {
    options = {
        icons_enabled = true,
--        theme = 'gruvbox',
--        theme = 'dracula',
        theme = 'onedark',
    },
    sections = {
        lualine_a = {
            {
                'filename',
                path = 1,
            }
        }
    }
}
