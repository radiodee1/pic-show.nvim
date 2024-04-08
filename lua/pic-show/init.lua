local png = require("pic-show.png")
local jpg = require("pic-show.jpg")

local M = {}

M.show_png = png.show 
M.show_jpg = jpg.show 

Allow_png = 0
Allow_jpg = 0

M.set_png = png.set 
M.set_jpg = jpg.set 

return M

