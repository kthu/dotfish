# Install thefuck first:
# sudo pip install thefuck
function fuck
  eval (thefuck $history[1])
end
