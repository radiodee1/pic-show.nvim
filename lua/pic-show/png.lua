-- png show --

local M = {}

function M.show(file)

    if Allow_png == 1 then
        vim.fn.system(vim.g.command_picshow_png .. " " .. file)
    else
        print"not allowed"
    end
end

function M.set()
    print("set png")
    Allow_png = 1
end

return M


