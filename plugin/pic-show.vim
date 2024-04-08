if exists("g:loaded_picshow")
    finish
endif
let g:loaded_picshow = 1

if !exists("g:command_picshow_png") 
    let g:command_picshow_png = "google-chrome"
endif


if !exists("g:command_picshow_jpg") 
    let g:command_picshow_jpg = "google-chrome"
endif


command! -nargs=* PicShowPng lua require("pic-show").show_png(<f-args>)
command! -nargs=* PicShowJpg lua require("pic-show").show_jpg(<f-args>)

command! -nargs=0 PicShowSetPng lua require("pic-show").set_png()
command! -nargs=0 PicShowSetJpg lua require("pic-show").set_jpg()
command! -nargs=0 PicShowSetAll lua require("pic-show").set_png() require("pic-show").set_jpg()
command! -nargs=0 PicShowSetNone lua require("pic-show").set_none()

