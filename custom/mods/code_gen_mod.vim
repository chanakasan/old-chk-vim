function! CodeGenModelAssert(class_name)
  exec ".!bundle exec ruby -I_t/ $HOME/code/scripts/generate-rails-model-assertions.rb " . a:class_name
endfunction
