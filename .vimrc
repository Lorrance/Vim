
let iCanHazNeoBundle=1
let neobundle_readme=expand('~/.vim/bundle/neobundle.vim/README.md')
if !filereadable(neobundle_readme)
    echo "Installing NeoBundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
        let iCanHazNeoBundle=0
endif

"Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
 "NeoBundle 'brookhong/cscope.vim'
 NeoBundle 'Shougo/vimproc'
 NeoBundle 'Lokaltog/vim-easymotion'
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'taglist.vim'
 "NeoBundle 'Townk/vim-autoclose'
 NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'Valloric/YouCompleteMe'
 NeoBundle 'brookhong/cscope.vim'
 NeoBundle 'wesleyche/SrcExpl' 


call neobundle#end()


" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

 if has('cscope')
 set cscopetag cscopeverbose
   
       if has('quickfix')
          set cscopequickfix=s-,c-,d-,i-,t-,e-
       endif

if filereadable("cscope.out")
            cs add cscope.out
        elseif $CSCOPE_DB != ""
            cs add $CSCOPE_DB
        endif
endif

" general
 set nu
 set cursorline    
 set ruler
 set history=50
 set showmode
 set shiftwidth=4
 set tabstop=4
 set noexpandtab
 set incsearch
 set hls
 set sw=4
 set guifontset=8x16,kc15f,-*-16-*-big5-0 
 set ignorecase
 set ls=2
 set fileformats=dos,unix

 " High light unwanted spaces in end of line
  highlight ExtraWhitespace ctermbg=darkred guibg=darkcyan
  autocmd BufEnter * if &ft != 'help' | match ExtraWhitespace /\s\+$/ | endif
  autocmd BufEnter * if &ft == 'help' | match none /\s\+$/ | endif

 "background transparent
 hi Normal ctermfg=252 ctermbg=none

 " show :tabe file name
 set wildmenu

 nmap zs :cs find s <C-R>=expand("<cwora>")<CR><CR>
 nmap zg :cs find g <C-R>=expand("<cword>")<CR><CR>
 nmap zc :cs find c <C-R>=expand("<cword>")<CR><CR>
 nmap zt :cs find t <C-R>=expand("<cword>")<CR><CR>
 nmap ze :cs find e <C-R>=expand("<cword>")<CR><CR>
 nmap zf :cs find f <C-R>=expand("<cfile>")<CR><CR>
 nmap zi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
 nmap zd :cs find d <C-R>=expand("<cword>")<CR><CR>

 nmap <F8> :TlistToggle<CR><CR>
 let Tlst_Show_One_File=1
 let Tlist_Exit_OnlyWindow=1
 set ut=100

 nmap <F9> :NERDTreeToggle<CR><CR>
 let NERDTreeWinPos=1
 let g:NERDTreeDirArrowExpandable = '▸'
 let g:NERDTreeDirArrowCollapsible = '▾'
 
 nmap cw :cw <CR><CR>
 
nmap <F10> :SrcExplToggle<CR>

" // In order to avoid conflicts, the Source Explorer should know what plugins
" // except itself are using buffers. And you need add their buffer names into
" // below listaccording to the command ":buffers!"
      let g:SrcExpl_pluginList = [ 
          \ "__Tag_List__", 
          \ "_NERD_tree_" 
          \ ] 
let g:EasyMotion_leader_key=','                           
