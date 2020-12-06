if status is-interactive
   type byobu > /dev/null
   if [ $status = 0 -a "$SSH_CLIENT" -a $TERM != "dumb" -a $TERM != "screen" -a $TERM != "screen-256color"  -a $TERM != "tmux"  -a $TERM != "tmux-256color" ]
      exec byobu-launcher
   else
      set fish_greeting ""
      set -x CLICOLOR 1
      set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config

      # Set up fisherman paths
      mkdir -p $XDG_CONFIG_HOME/fish/fisherman

      set -U fisher_path $XDG_CONFIG_HOME/fish/fisherman
      set fish_function_path $fish_function_path[1] $fisher_path/functions   $fish_function_path[2..-1]
      set fish_complete_path $fish_complete_path[1] $fisher_path/completions $fish_complete_path[2..-1]

      for file in $fisher_path/conf.d/*.fish
          builtin source $file 2> /dev/null
      end

      # Install fisherman
      if not functions -q fisher
        curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
        fish -c fisher
      end

      # Load custom settings for current hostname
      set HOST_SPECIFIC_FILE $XDG_CONFIG_HOME/fish/(hostname).fish
      if test -f $HOST_SPECIFIC_FILE
         . $HOST_SPECIFIC_FILE
      else
         echo Creating host specific file: $HOST_SPECIFIC_FILE
         touch $HOST_SPECIFIC_FILE
      end

      # Load custom settings for current user
      set USER_SPECIFIC_FILE $XDG_CONFIG_HOME/fish/(whoami).fish
      if test -f $USER_SPECIFIC_FILE
         . $USER_SPECIFIC_FILE
      else
         echo Creating user specific file: $USER_SPECIFIC_FILE
         touch $USER_SPECIFIC_FILE
      end

      # Load custom settings for current OS
      set PLATFORM_SPECIFIC_FILE $XDG_CONFIG_HOME/fish/(uname -s).fish
      if test -f $PLATFORM_SPECIFIC_FILE
         . $PLATFORM_SPECIFIC_FILE
      else
         echo Creating platform specific file: $PLATFORM_SPECIFIC_FILE
         touch $PLATFORM_SPECIFIC_FILE
      end

      starship init fish | source
   end
end
