## set up

```
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd
brew install neovim
brew install tmux
```

## config

if you want to use my configuration, you just set up all those tools, and clone my project. Then move `lazyvim/nvim & yabai & skhd` dirs to your path `~/.config/`, except `.tmux.conf`, it should be in `~/`. Now, everything is ok!

_you can change all the configuration as you want!!_

## tmux shortcuts

|            shortcuts            |          description           |
| :-----------------------------: | :----------------------------: | ---------------------------- |
|             ctrl+b+             |                                | split the window by vertical |
|            ctrl+b+-             | split the window by horizontal |
|         ctrl+b+h/j/k/l          |       resize your window       |
| ctrl+b+left/up/right/down arrow |    navigate in your windows    |
|                y                |           copy text            |

and your sessions will be automatically saved every 15 minutes;

## yabai shortcuts

|           shortcuts           |    description     |
| :---------------------------: | :----------------: |
|     alt+right click drag      |  move this window  |
|      alt+left click drag      | resize this window |
| drag window to another window |     swap them      |

## skhd shortcuts

|            shortcuts            |               description                |
| :-----------------------------: | :--------------------------------------: |
|       alt/option+h/j/k/l        |               focus change               |
|       shift+option/alt+r        |        rotate the windows layout         |
|      shift+option/alt+y/x       |  mirror the windows layout by y/x-axis   |
|        shift+alt+j/k/l/h        | swap with the below/up/right/left window |
| ctrl/control+option/alt+h/j/k/l |          move window and split           |
|      ctrl+alt/option+q/r/s      |         stop/restart/start yabai         |
|       shift+alt/option+t        |             flot this window             |
|           shift+alt+e           |    resize windows to occupy same area    |
|           shift+alt+m           |            maximize a window             |

## neovim is similar to https://github.com/bryant-video/neovim-tutorial.gi, but there are some changes I have made

- the shortcuts you can see in nvim-shortcuts.md

- /nvim/lua/mynvim/core/keymaps.lua
  I add some functions to justy your file type that you are writing, so you can use <leader> + r to fast compile and run a cpp/python/c/java demo.

- nvim/lua/mynvim/core/options.lua
  When you create a new file, it will automatically add a header in your file, and you can change as you see fit.
  And the cursor will remember where it is when you close a file.

- add a new plugin
  lukas-reineke/indent-blankline.nvim

- change lua server from sumneko_lua to lua_ls

- make some change to install more fast

- automatically format when file(s) be saved
