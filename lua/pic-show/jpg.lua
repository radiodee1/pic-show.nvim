-- jpg show --

local M = {}


function M.show(file)
    print(file .. ' <<')
    if Allow_jpg == 1 then
        vim.fn.system(vim.g.command_picshow_jpg .. " " .. file)
    else
        print("not allowed")
    end

end

function M.set()
    print("set jpg")
    Allow_jpg = 1 
end
return M
