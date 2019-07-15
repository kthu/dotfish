function dotstore -d "Store dotfiles in git"
  set DOTSTORE "$HOME/.local/var/dotstore/"
  if test -d "$DOTSTORE"
    /usr/bin/git --git-dir=$DOTSTORE --work-tree=$HOME $argv 
  else
    echo "Dotstore does not exist. Cloning from git"
    git clone --bare ssh://git@gitlab.lallis.org:2222/kjetil/dotstore.git "$DOTSTORE"
    git  --git-dir=$DOTSTORE --work-tree=$HOME config --local status.showUntrackedFiles no
    echo "Clone complete. Next run dotstore checkout"
  end
end

