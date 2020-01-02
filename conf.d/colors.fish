set fish_color_command white
set pure_color_success (set_color cyan)

# Set dircolors if ~/.dircolors exists

set command_alternatives dircolors gdircolors

if test -e ~/.dircolors

     for i in (seq (count $command_alternatives))
          set alternative $command_alternatives[$i]
          if command_exists $alternative
               set -x DIR_COLORS (eval (which $alternative) -c | cut -d' '  -f 3-)
               break
          end
     end
end

