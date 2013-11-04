function ln -d "List recently changed files"
  ls -lAhgFqt $argv | grep -v "^total"
end
