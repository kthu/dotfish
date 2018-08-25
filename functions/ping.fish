function ping -d "Send ICPM ECHO_REQUEST packets to host"

  set command_alternatives prettyping ping
  # Command specific parameters
  set prettyping "--nolegend"

  for i in (seq (count $command_alternatives))
    set alternative $command_alternatives[$i]
    if command_exists $alternative
      set args $$command_alternatives[$i]
      eval (which $alternative) $args $argv 2>/dev/null
      break
    end
  end
end
