
local M = {}

function M.show()
    local whitelist = {".png", ".jpg", ".jpeg", ".pdf", ".html", ".htm"}
    local filename = "\"" .. vim.fn.expand("%") .. "\""
    
    for _, i in ipairs(whitelist) do
        local extension = filename:sub(- (i:len() + 1), - 2)
        if extension == i then
            -- print("found:" .. i .. " extension:" .. extension)
            vim.fn.system(vim.g.command_picshow_jpg .. " " .. filename)
            return
        end
        -- print( i .. " " .. extension )
    end
    print("filetype not found in whitelist")

end

return M
