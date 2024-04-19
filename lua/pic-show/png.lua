-- png show --

local M = {}

function M.show(file)

    if Allow_png == 1 then
        vim.fn.system(vim.g.command_picshow_png .. " " .. file ) --, {detach = true}, function (in ...) print("launch") end)
    else
        print("not allowed")
    end
end

function M.set()
    Allow_png = 1
end

return M


