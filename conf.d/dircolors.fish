# Set dircolors if ~/.dircolors exists
if test -e ~/.dircolors
     set -x DIR_COLORS (dircolors ~/.dircolors | head -1 | cut -d'=' -f 2-)
end
