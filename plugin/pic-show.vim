if exists("g:loaded_picshow")
    finish
endif
let g:loaded_picshow = 1

if !exists("g:command_picshow_png") 
    " let g:command_picshow_png = "x-www-browser"
    let g:command_picshow_png = "xdg-open"
endif


if !exists("g:command_picshow_jpg") 
    " let g:command_picshow_jpg = "x-www-browser"
    let g:command_picshow_jpg = "xdg-open"
endif


command! -nargs=* PicShowPng lua require("pic-show").show_png(<f-args>)
command! -nargs=* PicShowJpg lua require("pic-show").show_jpg(<f-args>)

command! -nargs=0 PicShowSetPng lua require("pic-show").set_png()
command! -nargs=0 PicShowSetJpg lua require("pic-show").set_jpg()
command! -nargs=0 PicShowSetAll lua require("pic-show").set_png() require("pic-show").set_jpg()
command! -nargs=0 PicShowSetNone lua require("pic-show").set_none()
command! -nargs=0 PicShowSetPrompt lua require("pic-show").set_prompt()
command! -nargs=0 PicShowTogglePrompt lua require("pic-show").toggle_prompt()

lua <<EOF

local question_fn = function(callback)

    local Allow_here = Allow_prompt
    local filename = "\"" .. vim.fn.expand("%") .. "\""

    if Allow_here == 1 then
        local input = vim.fn.input("Open in viewer? (Y/n/name): " )
        -- print(input)
        if input == 'n' or input == 'N' then
            return 
        end
        if input == 'y' or input == 'Y' or input == "" then
            callback(filename)
            return
        end

        local png = vim.g.command_picshow_png 
        local jpg = vim.g.command_picshow_jpg
        vim.g.command_picshow_png = input
        vim.g.command_picshow_jpg = input
        callback(filename)
        vim.g.command_picshow_jpg = jpg 
        vim.g.command_picshow_png = png
        return
    else
        callback(filename)
    end 

end 

vim.api.nvim_create_autocmd({"BufReadPost"}, { 
    pattern = "*.jpeg",
    callback = function()
       question_fn(require("pic-show").show_jpg) 

    end
})

vim.api.nvim_create_autocmd({"BufReadPost"}, { 
    pattern = "*.jpg",
    callback = function()
       question_fn(require("pic-show").show_jpg) 
    end
})

vim.api.nvim_create_autocmd({"BufReadPost"}, {
    pattern = "*.png",
    callback = function( )
        question_fn(require("pic-show").show_png) 

    end
})

vim.api.nvim_create_autocmd({"BufReadPost"}, {
    pattern = "*.pdf",
    callback = function( )
        question_fn(require("pic-show").show_png) 

    end
})

EOF
