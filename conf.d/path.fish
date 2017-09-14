# if status --is-interactive
    for p in /usr/bin /usr/local/bin /usr/local/sbin /opt/local/bin ~/.config/fish/bin ~/.local/bin ~/bin ~/scripts
       if test -d $p
          set PATH $p $PATH
       end
    end
# end

 # yarrr, add /var/lib/gems/1.8/bin to path so gems installed by the retarded ubuntu rubygems package are on the path
 set CUSTOM_GEM_PATH "/var/lib/gems/1.8/bin"
 if test -d $CUSTOM_GEM_PATH
     set -x PATH $PATH "/var/lib/gems/1.8/bin"
 end
