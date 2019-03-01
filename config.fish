type byobu > /dev/null
if [ $status = 0 -a "$SSH_CLIENT" -a $TERM != "dumb" -a $TERM != "screen" -a $TERM != "screen-256color" ]
   exec byobu-launcher
else
   set fish_greeting ""
   set -x CLICOLOR 1

   set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config

   # Use subdir for fisherman
   mkdir $XDG_CONFIG_HOME/fish/fisherman
   set -U fish_path $XDG_CONFIG_HOME/fish/fisherman

   if not functions -q fisher
     curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
     fish -c fisher
   end

   set fish_function_path $fish_path/functions $fish_function_path
   set fish_complete_path $fish_path/completions $fish_complete_path

   for file in $fish_path/conf.d/*.fish
     builtin source $file 2> /dev/null
   end

   # Load custom settings for current hostname
   set HOST_SPECIFIC_FILE ~/.config/fish/(hostname).fish
   if test -f $HOST_SPECIFIC_FILE
      . $HOST_SPECIFIC_FILE
   else
      echo Creating host specific file: $HOST_SPECIFIC_FILE
      touch $HOST_SPECIFIC_FILE
   end

   # Load custom settings for current user
   set USER_SPECIFIC_FILE ~/.config/fish/(whoami).fish
   if test -f $USER_SPECIFIC_FILE
      . $USER_SPECIFIC_FILE
   else
      echo Creating user specific file: $USER_SPECIFIC_FILE
      touch $USER_SPECIFIC_FILE
   end

   # Load custom settings for current OS
   set PLATFORM_SPECIFIC_FILE ~/.config/fish/(uname -s).fish
   if test -f $PLATFORM_SPECIFIC_FILE
      . $PLATFORM_SPECIFIC_FILE
   else
      echo Creating platform specific file: $PLATFORM_SPECIFIC_FILE
      touch $PLATFORM_SPECIFIC_FILE
   end
end
