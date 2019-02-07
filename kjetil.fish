set EDITOR vim
set VISUAL vim
set PAGER less
set -x MAVEN_COLOR true

set -xU LESS_TERMCAP_md (printf "\e[01;31m")
set -xU LESS_TERMCAP_me (printf "\e[0m")
set -xU LESS_TERMCAP_se (printf "\e[0m")
set -xU LESS_TERMCAP_so (printf "\e[01;44;33m")
set -xU LESS_TERMCAP_ue (printf "\e[0m")
set -xU LESS_TERMCAP_us (printf "\e[01;32m")

#Aliaser
function cdl; cd $_ ; end
function forallf; find . -type f -print0 | xargs -0 ; end
function foralld; find . -type d -print0 | xargs -0 ; end
function g; gvim --remote-silent $argv ; end
function dotstore; /usr/bin/git --git-dir=$HOME/.local/var/dotstore/ --work-tree=$HOME $argv ; end

abbr exot exit
abbr cls reset
abbr p pwd
abbr c cat

