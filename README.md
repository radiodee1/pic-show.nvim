# pic-show.nvim

nvim plugin to show pictures.

* Try to edit a png or jpg in nvim with this plugin installed and an ImageViewer window will open with the pic in it. The program works on files the first time they are opened in a buffer.

* As an added bonus, 'pdf' files are accepted and are opened using the 'open' command.

* Also commands exist for enabling or disabling the feature, as well as operating on files that you don't want to open in a buffer.

* Uses debian style 'open' command.

* Tested on Neovim v0.9.4. Also tested with the Plug installer.

## Installation

```
Plug 'radiodee1/pic-show.nvim'
```

## Commmands

| Commmands | Uses | Args |
|---|---|---|
| PicShowPng | Show a png in the viewer of choice | 1 |
| PicShowJpg | Show a jpg in the viewer of choice | 1 |
| PicShowSetPng | Enable the Show Png feature | 0 |
| PicShowSetJpg | Enable the Show Jpg feature | 0 |
| PicShowSetAll | Enable both Png and Jpg features | 0 |
| PicShowSetNone | Disable both Png and Jpg features | 0 |
| PicShowSetPrompt | Enable prompt when viewer is opened | 0 |
| PicShowTogglePrompt | Toggle prompt when viewer is opened | 0 |
| PicShowCurrent | Show the current file in the viewer | 0 |

## Other Linux Distributions

In your Neovim config, in a vimscript style init file, enter values like these:

```
let g:command_picshow_png = "google-chrome"
let g:command_picshow_jpg = "google-chrome"
```

The example above is from `~/.config/nvim/init.vim`.

## Prompt - 04.19.2024

You can turn on a prompt for user to specify if they want the system viewer to open a graphics file when that file is loaded in a buffer.

If you enable the prompt there are three possible use cases. In the first instance you don't want to open the file. 
In the second instance you want to open the file with the default viewer. In the third instance you want to open the 
file in another editor besides the system viewer. In this last case you can type the name of the executable at the 
prompt where you would normally enter 'y' or 'n'.


You could type this 
```
Open in viewer? (Y/n/name): y 
```
or you could type this 
```
Open in viewer? (Y/n/name): n 
```
or finally you could type something like this 
```
Open in viewer? (Y/n/name): gimp
```
Of course you would have to have gimp installed on your system for this to work. 

## NOTE

With the PicShowPng and PicShowJpg commands, a full path must be supplied to the picture name. Tilda characters are not automatically converted to the 
full url.
