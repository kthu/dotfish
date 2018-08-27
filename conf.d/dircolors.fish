# Set dircolors if ~/.dircolors exists
if test -e ~/.dircolors
     set -x DIR_COLORS (dircolors -c | cut -d' '  -f 3-)
end
