set runtimepath+=~/.config/nvim

source ~/.config/nvim/vimrcs/plugins.vim
source ~/.config/nvim/vimrcs/basic.vim
source ~/.config/nvim/vimrcs/filetypes.vim
source ~/.config/nvim/vimrcs/plugins_config.vim
source ~/.config/nvim/vimrcs/extended.vim
" my config
try
    source ~/.config/nvim/vimrcs/my_configs.vim
catch
endtry
