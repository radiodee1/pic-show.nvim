# pic-show.nvim

nvim plugin to show pictures.

* Try to edit a png or jpg in nvim with this plugin installed and an ImageViewer window will open with the pic in it. The program works on files the first time they are opened in a buffer.

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
