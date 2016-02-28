autocmd BufNewFile,BufRead {
      \*.god,
      \*.jbuilder,
      \*.rabl,
      \Capfile,
      \Gemfile,
      \Guardfile,
      \Rakefile,
      \Vagrantfile
      \} set filetype=ruby
