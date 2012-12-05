function df -d "Display available diskspace" --no-scope-shadowing
   set -l PATH $PATH /usr/local/bin ~/bin

   if test -e (which dfc)
     eval (which dfc) $argv
   else 
      if test -e (which df)
         eval (which df) $argv
      else
        echo "df executable not found"
      end
   end
end
