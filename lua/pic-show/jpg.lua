-- jpg show --

local M = {}

function M.show()

    print(vim.g.command_picshow_png .. " " .. vim.g.command_picshow_jpg)
    if Allow_jpg == 1 then
        print("jpg-allow")
    else
        print"not-allow"
    end
        
end

function M.set()
    print("set jpg")
    Allow_jpg = 1 
end


return M
