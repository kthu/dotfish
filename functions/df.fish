function df -d "Display available diskspace" --no-scope-shadowing
   if test -e (which dfc)
     eval (which dfc) -T -t -tmpfs,devtmpfs,ecryptfs $argv
   else
      if test -e (which discus)
        eval (which discus) $argv
      else
         if test -e (which df)
            eval (which df) $argv
         else
           echo "df executable not found"
         end
      end
   end
end
