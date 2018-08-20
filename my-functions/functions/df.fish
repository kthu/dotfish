function df -d "Display available diskspace" --no-scope-shadowing
  set command_alternatives dfc discus df
  # Command specific parameters
  set dfc "-T -t -aufs,cgmfs,tmpfs,devtmpfs,ecryptfs -w"

  for i in (seq (count $command_alternatives))
    set alternative $command_alternatives[$i]
    if command_exists $alternative
      set args $$command_alternatives[$i]
      eval (which $alternative) $args $argv 2>/dev/null
      break
    end
  end
end
