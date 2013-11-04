function lr -d "List recently changed files"
  ls -lAhgFqt $argv | grep -v "^total"
end
