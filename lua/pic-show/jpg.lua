-- jpg show --

local M = {}

function M.show()

    if Allow_jpg == 1 then
        print("jpg-allow")
        print(vim.g.command_picshow)
    else
        print"not-allow"
    end
        
end

function M.set()
    print("set jpg")
    Allow_jpg = 1 
end


return M
