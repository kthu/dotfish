# Set up custom fisher paths

set -U fisher_path $__fish_config_dir/fisherd

mkdir -p $fisher_path/functions
mkdir -p $fisher_path/completions
mkdir -p $fisher_path/conf.d

set -x fish_function_path $fish_function_path[1] $fisher_path/functions $fish_function_path[2..-1]
set -x fish_complete_path $fish_complete_path[1] $fisher_path/completions $fish_complete_path[2..-1]

# Install fisher if not installed
if not functions -q fisher
  curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
  fisher update
end

for file in $fisher_path/conf.d/*.fish
    builtin source $file 2> /dev/null
end

