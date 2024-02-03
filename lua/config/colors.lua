-- set backgrounds to dark
vim.opt.background = "dark"
-- vim.opt.background = "light"

-- vim.cmd.colorscheme "catppuccin"
-- vim.cmd.colorscheme "catppuccin-latte"
-- vim.cmd.colorscheme "catppuccin-frappe"
-- vim.cmd.colorscheme "catppuccin-macchiato"
-- vim.cmd.colorscheme "catppuccin-mocha"

-- tokyonight
-- vim.cmd.colorscheme "tokyonight"
--vim.cmd.colorscheme "tokyonight-night"
-- vim.cmd.colorscheme "tokyonight-storm"
-- vim.cmd.colorscheme "tokyonight-day"
-- vim.cmd.colorscheme "tokyonight-moon"

-- nightfox
--vim.cmd.colorscheme "nightfox"
-- vim.cmd.colorscheme "dayfox"
-- vim.cmd.colorscheme "dawnfox"
-- vim.cmd.colorscheme "duskfox"
-- vim.cmd.colorscheme "nordfox"
-- vim.cmd.colorscheme "terafox"
-- vim.cmd.colorscheme "carbonfox"

-- moonfly
-- vim.cmd.colorscheme "moonfly"

-- nightfly
-- vim.cmd.colorschem "nightfly"

-- ondark
-- vim.cmd.colorscheme "onedark"

-- dracula
--vim.cmd.colorscheme "dracula"

-- darcula
-- vim.cmd.colorscheme "darcula"

-- rose-pine
-- vim.cmd("colorscheme rose-pine")
-- vim.cmd("colorscheme rose-pine-main")
-- vim.cmd("colorscheme rose-pine-moon")
-- vim.cmd("colorscheme rose-pine-dawn")

-- gruvbox
-- vim.cmd.colorscheme "gruvbox"
-- everforest
-- vim.cmd.colorscheme "everforest"

-- gruber-darker
-- vim.cmd.colorscheme("gruber-darker")

-- ayu
-- vim.cmd.colorscheme "ayu-dark"
-- vim.cmd.colorscheme "ayu-mirage"
-- vim.cmd.colorscheme "ayu-light"


-- kimbox kimbie dark theme
vim.cmd.colorscheme "kimbox"

-- modus themes
-- vim.cmd.colorscheme "modus"
-- vim.cmd.colorscheme "modus_vivendi"
-- vim.cmd.colorscheme "modus_operandi" -- light

-- :ColorMyPencils()
-- :ColorMyPencils('catppuccin')

function ColorMyPencils(color)
  color = color or "gruvbox"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" } )
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" } )
end
