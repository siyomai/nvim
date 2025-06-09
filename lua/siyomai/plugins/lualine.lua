local status, lualine = pcall(require, 'lualine')

if not status then
  return
end

local lualine_gruvbox = require('lualine.themes.gruvbox_dark')

lualine.setup({
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {
      {
        'filename',
        path = 1
      }
    },
    lualine_x = {'encoding', 'fileformat', 'filetype', 'location'},
    lualine_y = {},
    lualine_z = {},
  },
  options = {
    theme = lualine_gruvbox
  },
})
