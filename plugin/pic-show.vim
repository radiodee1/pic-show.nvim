if exists("g:loaded_picshow")
    finish
endif
let g:loaded_picshow = 1

command! -nargs=1 PicShowPng lua require("pic-show").show_png()
command! -nargs=1 PicShowJpg lua require("pic-show").show_jpg()

command! -nargs=0 PicShowSetPng lua require("pic-show").set_png()
command! -nargs=0 PicShowSetJpg lua require("pic-show").set_jpg()
command! -nargs=0 PicShowSetAll lua require("pic-show").set_png() require("pic-show").set_jpg()


