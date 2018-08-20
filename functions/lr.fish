function lr -d "List recently changed files"
  set -l param -lAghFtq

  if isatty 1
    set param $param
  end

  command ls $param $argv | grep -v "^total" | head -20
end
