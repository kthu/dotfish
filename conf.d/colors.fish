set pure_color_success (set_color cyan)

set fish_color_command normal
set fish_color_comment red
set fish_color_cwd green
set fish_color_cwd_root red
set fish_color_end green
set fish_color_error red
set fish_color_escape yellow
set fish_color_history_current normal --bold
set fish_color_host normal
set fish_color_match -b blue
set fish_color_param blue
set fish_color_normal normal
set fish_color_operator yellow
set fish_color_quote magenta
set fish_color_redirection yellow

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

