function l -d "One letter ls -l alias"
  set -l param -lh

  if isatty 1
    set param $param
  end

  command ls $param $argv
end
