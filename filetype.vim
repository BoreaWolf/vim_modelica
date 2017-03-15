" Author: Riccardo Orizio (R)
" Date: 15 March 2017
" Version: 1

" Setting the filetype for Modelica files
if exists("did_load_filetypes")
	finish
endif

" Creating the association between .mo files and its vim-syntax file
augroup filetypedetect
	au! BufRead,BufNewFile *.mo       setfiletype modelica
augroup END
