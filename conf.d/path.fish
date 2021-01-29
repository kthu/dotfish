for p in /usr/bin /usr/local/bin /usr/local/sbin /opt/local/bin ~/.config/fish/bin ~/.local/bin ~/bin ~/.cargo/bin
    if test -d $p
        contains $p $fish_user_paths; or set -Ua fish_user_paths $p
    end
end
