-- png show --

local M = {}

function M.show()
    print("png")
end

if Allow_png == 1 then
    print("Allow_op png")

else
    print"not Allow_op png"
end

function M.set()
    print("set png")
    Allow_png = 1
end

return M


