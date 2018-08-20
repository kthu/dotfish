type byobu > /dev/null
if [ $status = 0 -a "$SSH_CLIENT" -a $TERM != "dumb" -a $TERM != "screen" -a $TERM != "screen-256color" ]
   exec byobu-launcher
else
   set fish_greeting ""
   set -x CLICOLOR 1

   # Use subdir for fisherman
   set fish_path ~/.config/fish/fisherman

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
