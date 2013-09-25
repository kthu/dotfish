function df -d "Display available diskspace" --no-scope-shadowing
   if test (which dfc)
     eval (which dfc) -T -t -tmpfs,devtmpfs,ecryptfs $argv
   else
      if command_exists discus
        eval (which discus) $argv
      else
         if command_exists df
            eval (which df) $argv
         else
           echo "df executable not found"
         end
      end
   end
end
