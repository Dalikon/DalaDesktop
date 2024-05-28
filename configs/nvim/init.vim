set runtimepath+=~/.vim

source ~/.vim/vimrcs/plugins.vim
source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/plugins_config.vim
source ~/.vim/vimrcs/extended.vim
" my config
try
    source ~/.vim/vimrcs/my_configs.vim
catch
endtry 

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:latex_to_unicode_tab = ""

lua << EOF
local nvim_lsp_clangd_highlight = require'nvim-lsp-clangd-highlight'

require'lspconfig'.clangd.setup{
    capabilities = {
        textDocument = {
            semanticHighlightingCapabilities = {
                semanticHighlighting = true
            }
        }
    },
    on_init = nvim_lsp_clangd_highlight.on_init
}
EOF
