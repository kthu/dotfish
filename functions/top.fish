function top -d "Display processes"
   if test -e (which htop)
     eval (which htop) $argv
   else
      if test -e (which top)
        eval (which top) $argv
      else
        echo "topexecutable not found"
      end
   end
end
