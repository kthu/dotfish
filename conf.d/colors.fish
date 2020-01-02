# Set dircolors if ~/.dircolors exists

set command_alternatives dircolors gdircolors

if test -e ~/.dircolors

     for i in (seq (count $command_alternatives))
          set alternative $command_alternatives[$i]
          if command_exists $alternative
               set -x DIR_COLORS (eval (which $alternative) -c | cut -d' '  -f 3-)
               #eval (which $alternative) $args $argv 2>/dev/null
               break
          end
     end
end
     # set -x DIR_COLORS (dircolors -c | cut -d' '  -f 3-)
