function bigger -d "List the biggest file"
  ls -SlAh $argv | grep -v "^total" | head -1
end
