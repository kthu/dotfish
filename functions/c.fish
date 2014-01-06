function c -d "Cat with colors"
  set command_alternatives pygmentize vimcat cat
  # Command specific parameters
  set pygmentize "-g"

  for i in (seq (count $command_alternatives))
    set alternative $command_alternatives[$i]
    if command_exists $alternative
      set args $$command_alternatives[$i]
      eval (which $alternative) $args $argv
      break
    end
  end
end
