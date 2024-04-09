# pic-show.nvim

nvim plugin to show pictures.

* Try to edit a png or jpg in nvim with this plugin installed and an ImageViewer window will open with the pic in it. The program works on files the first time they are opened in a buffer.

* As an added bonus, 'pdf' files are accepted and are opened using the 'open' png command.

* Also commands exist for enabling or disabling the feature, as well as operating on files that you don't want to open in a buffer.

* Uses debian style 'open' command.

* Tested on Neovim v0.9.4 .

## Commmands

| Commmands | Uses |
|---|---|
| PicShowPng | Show a png in the viewer of choice |
| PicShowJpg | Show a jpg in the viewer of choice |
| PicShowSetPng | Enable the Show Png feature |
| PicShowSetJpg | Enable the Show Jpg feature |
| PicShowSetAll | Enable both Png and Jpg features |
| PicShowSetNone | Disable both Png and Jpg features |

## Other Distributions

In your Neovim config, in a vimscript style init file, enter values like these:

```
let g:command_picshow_png = "google-chrome"
let g:command_picshow_jpg = "google-chrome"
```

The example above is from `~/.config/nvim/init.vim`.
