let s:modes_for_statusline = {
      \ 'n'      : 'N',
      \ 'i'      : 'I',
      \ 'v'      : 'V',
      \ 'V'      : 'V·Line',
      \ "\<C-v>" : 'V·Block',
      \ 'R'      : 'R',
      \ 'Rv'     : 'V·Replace',
      \ 'no'     : 'N·Operator Pending ',
      \ 's'      : 'Select ',
      \ 'S'      : 'S·Line ',
      \ "\<C-s>" : 'S·Block ',
      \ 'c'      : 'Command ',
      \ 'cv'     : 'Vim Ex ',
      \ 'ce'     : 'Ex ',
      \ 'r'      : 'Prompt ',
      \ 'rm'     : 'More ',
      \ 'r?'     : 'Confirm ',
      \ '!'      : 'Shell ',
      \ 't'      : 'Terminal '
      \}

function statusline#currentmode()
  return toupper(s:modes_for_statusline[mode()])
endfunction

function statusline#readonly()
  return &readonly ? ' (ro) ' : ''
endfunction

function statusline#modified()
  return &modified ? ' (+) ' : ''
endfunction

function statusline#help()
  return &buftype == 'help' ? ' (help) ' : ''
endfunction

function statusline#filetype()
  return strlen(&filetype) ? &filetype : 'unknown'
endfunction
