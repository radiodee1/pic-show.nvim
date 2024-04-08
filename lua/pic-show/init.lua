local png = require("pic-show.png")
local jpg = require("pic-show.jpg")

local M = {}

Allow_png = 0
Allow_jpg = 0

M.show_png = png.show 
M.show_jpg = jpg.show 

M.set_png = png.set 
M.set_jpg = jpg.set 

M.set_none = function ()
    Allow_jpg = 0
    Allow_png = 0
end

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
    pattern = "*.jpg",
    callback = function()
        jpg.show( vim.fn.expand("%") )
    end
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
    pattern = "*.png",
    callback = function( )
        png.show(vim.fn.expand("%"))
    end
})

return M

