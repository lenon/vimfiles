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
