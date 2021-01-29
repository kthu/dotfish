if command_exists fzf
    set -g FZF_DEFAULT_COMMAND "command fd --type f --hidden --follow --exclude .git \$dir"
    set -g FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
    fzf_key_bindings
end
