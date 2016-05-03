"----------------------------------------------------------------------------------------------------------------
" Configuração do pathongen
execute pathogen#infect()
"----------------------------------------------------------------------------------------------------------------

" Abrir o NERDTree de forma default------------------------------------------------------------------------------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Sair do NERDTree com a tecla 'q'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Abrir e feixar o NERDTree com o atalho 'Ctrl+n'
map <C-n> :NERDTreeToggle<CR>

" Habilita a sistaxe se identificado algum arquivo com sintaxe
if has("syntax")
    syntax on
endif

" Habilita a identação de arquivos de plugins
if has("autocmd")
    filetype plugin indent on
endif

" Habilita a utilização do mouse
if has('mouse')
	set mouse=a
endif

" show line numbers
set number

" indent when moving to the next line while writing code
set autoindent


" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch
set autoindent

" show a visual line under the cursor's current line
set cursorline

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" End Syntastic
