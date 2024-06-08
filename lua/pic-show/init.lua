local png = require("pic-show.png")
local jpg = require("pic-show.jpg")

local any = require("pic-show.any")

local M = {}

Allow_png = 1
Allow_jpg = 1

Allow_prompt = 0

M.show_png = png.show 
M.show_jpg = jpg.show 
M.show_any = any.show

M.set_png = png.set 
M.set_jpg = jpg.set 

M.set_none = function ()
    Allow_jpg = 0
    Allow_png = 0
    Allow_prompt = 0
end

M.set_prompt = function ()
    Allow_prompt = 1
    print("pic-show allow_prompt: " .. Allow_prompt)
end

M.toggle_prompt = function ()
    
    if Allow_prompt == 1 then
        Allow_prompt = 0
    elseif Allow_prompt == 0 then
        Allow_prompt = 1
    end
    print("pic-show allow_prompt: " .. Allow_prompt)
end

return M

