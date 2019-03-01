set EDITOR vim
set VISUAL vim
set PAGER less
set -x MAVEN_COLOR true

# Vim mode
fish_vi_key_bindings

#Aliaser
function cdl; cd $_ ; end
function forallf; find . -type f -print0 | xargs -0 ; end
function foralld; find . -type d -print0 | xargs -0 ; end
function g; gvim --remote-silent $argv ; end
function dotstore; /usr/bin/git --git-dir=$HOME/.local/var/dotstore/ --work-tree=$HOME $argv ; end
function dur; echo $CMD_DURATION | humanize_duration ; end

abbr exot exit
abbr cls reset
abbr p pwd
abbr c cat

