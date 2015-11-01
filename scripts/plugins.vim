let bundles = []

for plugin in g:vundle#bundles
  let url = 'https://github.com/' . plugin.name_spec
  let name = split(plugin.name_spec, '/')[-1]
  call add(bundles, [name, url])
endfor

call append(0, '## Installed plugins')

for item in bundles
  call append(line('$'), printf('* [%s](%s)', item[0], item[1]))
endfor
