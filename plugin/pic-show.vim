if exists("g:loaded_picshow")
    finish
endif
let g:loaded_picshow = 1

if !exists("g:command_picshow_png") 
    " let g:command_picshow_png = "x-www-browser"
    let g:command_picshow_png = "open"
endif


if !exists("g:command_picshow_jpg") 
    " let g:command_picshow_jpg = "x-www-browser"
    let g:command_picshow_jpg = "open"
endif


command! -nargs=* PicShowPng lua require("pic-show").show_png(<f-args>)
command! -nargs=* PicShowJpg lua require("pic-show").show_jpg(<f-args>)

command! -nargs=0 PicShowSetPng lua require("pic-show").set_png()
command! -nargs=0 PicShowSetJpg lua require("pic-show").set_jpg()
command! -nargs=0 PicShowSetAll lua require("pic-show").set_png() require("pic-show").set_jpg()
command! -nargs=0 PicShowSetNone lua require("pic-show").set_none()

lua <<EOF

vim.api.nvim_create_autocmd({"BufReadPost"}, { 
    pattern = "*.jpg",
    callback = function()
       require("pic-show").show_jpg(vim.fn.expand("%"))

    end
})

vim.api.nvim_create_autocmd({"BufReadPost"}, {
    pattern = "*.png",
    callback = function( )
        require("pic-show").show_png(vim.fn.expand("%"))

    end
})

EOF
