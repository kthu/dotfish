if command_exists fzf   
    if command_exists fd
        set -g FZF_DEFAULT_COMMAND "command fd --hidden --follow --exclude .git --search-path \$dir"
        set -g FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
    end
    fzf_key_bindings
end
