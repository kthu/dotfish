function mvn -d "Like mvn, but with color"
  set command_alternatives mvnc mvn

  for i in (seq (count $command_alternatives))
    set alternative $command_alternatives[$i]
    if command_exists $alternative
      set args $$command_alternatives[$i]
      eval (which $alternative) $args $argv
      break
    end
  end
end
