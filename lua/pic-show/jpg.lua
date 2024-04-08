-- jpg show --
-- local Util = require('lazyvim.util')

local M = {}


function M.show(file)

    print(vim.g.command_picshow_png .. " " .. vim.g.command_picshow_jpg)
    if Allow_jpg == 1 then
        print("jpg-allow")
        vim.fn.system(vim.g.command_picshow_jpg .. " " .. file)
    else
        print"not-allow"
    end
        
end

function M.set()
    print("set jpg")
    Allow_jpg = 1 
end
return M
