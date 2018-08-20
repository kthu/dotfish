function newer -d "List the newest file"
  ls -Athl $argv | grep -v "^total" | head -1
end
