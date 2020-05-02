if command_exists fzf
    set -g FZF_DEFAULT_COMMAND "command fd"
    set -g FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND \$dir"
    fzf_key_bindings
end
