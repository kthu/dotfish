function l. -d "List long info on all files"
  set -l param -lAh

  if isatty 1
    set param $param
  end

  command ls $param $argv
end
