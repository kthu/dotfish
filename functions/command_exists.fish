function command_exists
  set COMMANDPATH ""(which $argv 2>/dev/null)""
  if test -n "$COMMANDPATH" -a -x "$COMMANDPATH"
    return 0
  else
    return 1
  end
end

