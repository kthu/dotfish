function elt -d "List files in long format sorted by modified date"
  command exa -l --git --sort=modified $argv
end
