# if status --is-interactive
    for p in /usr/bin /usr/local/bin /usr/local/sbin /opt/local/bin ~/.config/fish/bin ~/.local/bin ~/bin ~/.cargo/bin
       if test -d $p
          set PATH $p $PATH
       end
    end
# end

