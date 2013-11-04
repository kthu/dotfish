function l. -d "List long info on all files"
  set -l param -lAh --color=always

  if isatty 1
    set param $param --indicator-style=classify
  end

  command ls $param $argv
end
