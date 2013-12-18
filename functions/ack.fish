function ack -d "grep-like text finder"
   if test -e (which ack-grep)
     eval (which ack-grep) $argv
   else
      if test -e (which ack)
        eval (which ack) $argv
      else
        echo "ack ecutable not found"
      end
   end
end
