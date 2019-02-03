set EDITOR vim
set VISUAL vim
set PAGER vimpager
set -x MAVEN_COLOR true

#Aliaser
function cdl; cd $_ ; end
function forallf; find . -type f -print0 | xargs -0 ; end
function foralld; find . -type d -print0 | xargs -0 ; end
function g; gvim --remote-silent $argv ; end

abbr exot exit
abbr cls reset
abbr p pwd
abbr c cat
abbr dotstore "/usr/bin/git --git-dir=$HOME/.local/var/dotstore/ --work-tree=$HOME"

