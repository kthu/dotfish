function ack -d "grep-like text finder"
  set FOUND 0 
  set COMMAND_ALTERNATIVES ack-grep ack grep

  # Command specific parameters
  set grep "-R"

  for i in (seq (count $COMMAND_ALTERNATIVES))
    set ALTERNATIVE $COMMAND_ALTERNATIVES[$i]
    if command_exists $ALTERNATIVE
      set FOUND 1 
      set args $$COMMAND_ALTERNATIVES[$i]
      eval (which $ALTERNATIVE) $args $argv 2>/dev/null
      break
    end
  end

  test "$FOUND" = 0; and echo "No suitable command found"
end
