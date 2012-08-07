# OSX specific cusomizations go here
# This file is version controlled; to make local changes, add them to either:
# - Your user specific file (~/.config/fish/<username>.fish)
# - Your host specific file (~/.config/fish/<hostname>.fish)

# Textmate defaults to /usr/bin/mate, but let's check for /usr/local/bin/mate
if test -f "/usr/local/bin/mate"
   set -x EDITOR "/usr/local/bin/mate -w"
else
   if test -f "/usr/bin/mate"
      set -x EDITOR "/usr/bin/mate -w"
   end
end

#Brew wants to be first in path
set PATH /usr/local/bin $PATH

set BROWSER open
