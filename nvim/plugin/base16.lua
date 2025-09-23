return {
  'RRethy/nvim-base16',
  config = function()
    local starlight = {
      black = '#242424',
      brblack = '#616161',

      red = '#CF1745',
      brred = '#FF1A53',

      green = '#3ECF5B',
      brgreen = '#17E640',

      yellow = '#CFCF17',
      bryellow = '#ECFF1A',

      blue = '#0BA6DA',
      brblue = '#1AC6FF',

      magenta = '#D926AC',
      brmagenta = '#F53DC7',

      cyan = '#17CFA1',
      brcyan = '#1AFFC6',

      white = '#E6E6E6',
      brwhite = '#FFFFFF',
    }
    starlight.background = starlight.black
    starlight.foreground = starlight.brwhite

    local b16_palette = require('mini.base16').mini_palette(starlight.background, starlight.foreground, 87)

    local palette = {
      base00 = b16_palette.base00, -- default bg
      base01 = b16_palette.base01, -- lighter bg
      base02 = b16_palette.base02, -- selection bg
      base03 = b16_palette.base03, -- comments, invisibles, line hi
      base04 = b16_palette.base04, -- dark fg
      base05 = b16_palette.base05, -- default fg, caret, delim, oper
      base06 = b16_palette.base06, -- light fg, rare
      base07 = b16_palette.base07, -- light bg, rare
      base08 = starlight.yellow, -- variables, xml tags, markup links & lists, diff-
      base09 = starlight.brcyan, -- ints, bools, consts, xml attrs, markup link urls
      base0A = starlight.cyan, -- classes, bold, search bg
      base0B = starlight.green, -- strings, inherits, markup code, diff+
      base0C = starlight.brred, -- support, regexp, escapes, quotes
      base0D = starlight.brblue, -- functions, methods, attributes, headings
      base0E = starlight.brmagenta, -- keywords, storage, selector, markup italic, diff~
      base0F = starlight.white, -- deprecated, open/close
    }
    require('base16-colorscheme').setup(palette)
  end,
}
