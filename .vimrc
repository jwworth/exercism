" vimrc for exercism
" source: https://github.com/jwworth/exercism

" In order for this file to be loaded by Vim, the main `.vimrc` file must
" contain `set exrc` and optionally `set secure`. Without those lines, Vim
" will ignore this file.

function! CountExercisms()
  execute '!git ls-files -x * | xargs -n 1 dirname | uniq | wc -l'
endfunction

nnoremap <leader>ce :call CountExercisms()<cr>
