
require('rose-pine').setup({ disable_background = true })
require('gruvbox').setup()
require('dracula').setup()

-- onedark
require('onedark').setup {
  style = 'darker',
  transparent = true,
  -- Lualine options --
  lualine = {
    transparent = true, -- lualine center bar transparency
  },
  toggle_style_key = '<leader>ts',
  toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'},
}
require('onedark').load()

function ColorMyPencils(color)
  color = color or "gruvbox"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" } )
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" } )
end

--ColorMyPencils()
--ColorMyPencils('dracula')
--ColorMyPencils('onedark')

