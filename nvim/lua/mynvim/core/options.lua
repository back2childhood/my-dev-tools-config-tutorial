-- automatic add file header
vim.cmd([[
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.go exec ":call SetTitle()"
"automatically add a header for a new file
func SetTitle()
    "if filetype is sh
    if &filetype == 'sh'
        call setline(1,"\#########################################################################")
        call append(line("."),   "\# File Name:    ".expand("%"))
        call append(line(".")+1, "\# Author:       Qian JiLi")
        call append(line(".")+2, "\# mail:         193937157@qq.com")
        call append(line(".")+3, "\# Created Time: ".strftime("%c"))
        call append(line(".")+4, "\#########################################################################")
        call append(line(".")+5, "\#!/bin/bash")
        call append(line(".")+6, "")
    else
        call setline(1, "/* ************************************************************************")
        call append(line("."),   "> File Name:     ".expand("%"))
        call append(line(".")+1, "> Author:        Qian JiLi")
        call append(line(".")+2, "> mail:          193937157@qq.com")
        call append(line(".")+3, "> Created Time:  ".strftime("%c"))
        call append(line(".")+4, "> Description:   ")
        call append(line(".")+5, " ************************************************************************/")
        call append(line(".")+6, "")
    endif
    // automatically move to the tail of file
    autocmd BufNewFile * normal G
endfunc
]])

vim.cmd([[
autocmd BufNewFile *.h,*.hpp exec ":call AddHHeader()"
func AddHHeader()
    let macro = "_".toupper(substitute(expand("%"), "[/.]", "_", "g"))."_"
    "normal o
    call setline(9, "#ifndef ".macro)
    call setline(10, "#define ".macro)
    call setline(11, "")
    call setline(12, "#endif  // ".macro)
endfunc
]])

vim.cmd([[
  if has("autocmd")
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g'\"" |
  \ endif
  endif
]])

local opt = vim.opt -- for conciseness

-- keep 8 line lags when your cursor move
opt.scrolloff = 8
-- opt.sidescrolloff = 8

-- line numbers
opt.number = true -- shows absolute line number on cursor line

-- tabs & indentation
opt.tabstop = 4 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 4 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight cursorline

-- appearance
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.iskeyword:append("-") -- consider string-string as whole word
