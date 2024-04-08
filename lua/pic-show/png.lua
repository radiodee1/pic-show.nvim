-- png show --

local M = {}

function M.show(file)
    print("png")

    if Allow_png == 1 then
        print("Allow_op png")
        vim.fn.system(vim.g.command_picshow_png .. " " .. file)

    else
        print"not Allow_op png"
    end
end

function M.set()
    print("set png")
    Allow_png = 1
end

return M


