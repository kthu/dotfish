function ack -d "grep-like text finder"
  set command_alternatives ack-grep ack grep
  # Command specific parameters
  set grep "-R"

  for i in (seq (count $command_alternatives))
    set alternative $command_alternatives[$i]
    if command_exists $alternative
      set args $$command_alternatives[$i]
      eval (which $alternative) $args $argv
      break
    end
  end
end
