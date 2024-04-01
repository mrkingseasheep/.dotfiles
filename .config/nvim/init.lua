local o = vim.opt
local g = vim.g

g.mapleader = " "

-- left sidebar
o.number = true
o.relativenumber = true

-- searching
o.ignorecase = true
o.smartcase = true
o.hlsearch = false

-- wrapping/indenting
o.wrap = true
o.breakindent = true
o.autoindent = true
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = false

-- mouse
o.mouse = "v"

-- misc
o.swapfile = true
o.wildmode = "longest", "list"

require("bindings")
require("core")
require("plugins")
