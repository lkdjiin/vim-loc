ruby load File.join(VIM::evaluate("expand('<sfile>:p:h')"),'loc.rb')

function! vimloc#loc()
  ruby <<EOF
  Loc.new.execute
EOF
endfunction

