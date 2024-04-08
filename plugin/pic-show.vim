if exists("g:loaded_picshow")
    finish
endif
let g:loaded_picshow = 1

command! -nargs=1 PicShowPng lua require("pic-show.nvim").show_png()
command! -nargs=1 PicShowJpg lua require("pic-show.nvim").show_jpg()



