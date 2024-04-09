local png = require("pic-show.png")
local jpg = require("pic-show.jpg")

local M = {}

Allow_png = 1
Allow_jpg = 1

M.show_png = png.show 
M.show_jpg = jpg.show 

M.set_png = png.set 
M.set_jpg = jpg.set 

M.set_none = function ()
    Allow_jpg = 0
    Allow_png = 0
end


return M

