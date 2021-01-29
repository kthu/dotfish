# Set up custom fisher paths

set -U fisher_path $__fish_config_dir/fisherd

#mkdir -p $fisher_path/functions
#mkdir -p $fisher_path/completions
#mkdir -p $fisher_path/conf.d

contains $fisher_path/completions $fish_complete_path; or set -a fish_complete_path $fisher_path/completions
contains $fisher_path/functions $fish_function_path; or set -a fish_function_path $fisher_path/functions


for file in $fisher_path/conf.d/*.fish
  builtin source $file 2> /dev/null
end

# Warn user to install fisher
if not functions -q fisher
  echo "Please install fisher:"
  echo "  curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"
  echo "  fisher update"
end      
