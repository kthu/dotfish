function cat -d "Concatinate files"

  set command_alternatives bat cat
  # Command specific parameters
  set bat " --theme \"Solarized (dark)\""

  for i in (seq (count $command_alternatives))
    set alternative $command_alternatives[$i]
    if command_exists $alternative
      set args $$command_alternatives[$i]
      eval (which $alternative) $args $argv 2>/dev/null
      break
    end
  end

end
