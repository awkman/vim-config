"Enable pathogen
source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Setting for trinity
" Open and close all the three plugins on the same time
nmap <F7>   :TrinityToggleAll<CR>
" Open and close the srcexpl.vim separately
nmap <F8>   :TrinityToggleSourceExplorer<CR>
" Open and close the taglist.vim separately
nmap <F9>  :TrinityToggleTagList<CR>
" Open and close the NERD_tree.vim separately
nmap <F10>  :TrinityToggleNERDTree<CR>

