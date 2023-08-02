# Greyscript custom vim syntax highlighting

This is my custom greyscript vim/neovim tylored syntax file for this strange programming language.

It matches the **onedark** atom's theme highlightings mixing my **php**, **js** and **ts** favorite parts.

## Setup

Using neovim (with lua):

* Copy the file in **~/.config/nvim/syntax** as **~/.config/nvim/syntax/greyscript.vim**
* Paste this: **vim.cmd[[autocmd BufRead,BufNewFile \*.src setfiletype greyscript]]** \
in the file **~/.config/nvim/init.lua**

Using vim:

* Create if not exists **~/.vim/syntax**
* Copy the file **greyscript.vim** in it as **~/.vim/syntax/greyscript.vim**
* Ensure **.vimrc** file contains the instructions: \
**filetype on** \
**syntax on** \
**autocmd BufRead,BufNewFile \*.src set filetype=greyscript**
