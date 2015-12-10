function s:startswith(string, prefix)
  return stridx(a:string, a:prefix, 0) == 0
endfunction

function s:sub(str, pat, rep)
  return substitute(a:str, '\v\C' . a:pat, a:rep, '')
endfunction

" Returns the spec for a file.
" Example:
"   s:spec_for_file('app/models/foo.rb') == 'spec/models/foo_spec.rb'
"   s:spec_for_file('lib/example.rb') == 'spec/lib/example_spec.rb'
function s:spec_for_file(file)
  let result = a:file

  " If the file starts with 'app', its corresponding spec file does not
  " start with 'spec/app'. In the other hand if the file starts with 'lib',
  " its corresponding spec does contain 'spec/lib'.
  if s:startswith(a:file, 'app/')
    let result = s:sub(result, '^app/', '')
  endif

  let result = s:sub(result, '\.rb$', '_spec.rb')
  let result = 'spec/' . result

  return result
endfunction

" Returns the file for a spec.
" Example:
"   s:file_for_spec('spec/models/foo_spec.rb') == 'app/models/foo.rb'
"   s:file_for_spec('spec/lib/example_spec.rb') == 'lib/example.rb'
function s:file_for_spec(spec)
  let result = a:spec

  let result = s:sub(result, '_spec\.rb$', '.rb')
  let result = s:sub(result, '^spec/', '')

  " If the spec is not inside 'spec/lib', its corresponding file contains the
  " 'app' prefix.
  if !s:startswith(a:spec, 'spec/lib/')
    let result = 'app/' . result
  endif

  return result
endfunction

function s:alternate_for_current_file()
  let current_file = expand('%')

  " If the current buffer is a spec file, returns the original file. Otherwise
  " returns the corresponding spec file.
  if s:startswith(current_file, 'spec/')
    return s:file_for_spec(current_file)
  else
    return s:spec_for_file(current_file)
  endif
endfunction

function SpecAlternate()
  exec ':e ' . s:alternate_for_current_file()
endfunction
