function lr -d "List recently changed files"
  set -l param -lAghFtq --color=always

  if isatty 1
    set param $param --indicator-style=classify
  end

  command ls $param $argv | grep -v "^total" | head -20
end
