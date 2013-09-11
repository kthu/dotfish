function mvn -d "Like mvn, but with color"
   if test -e (which mvnc)
     eval (which mvnc) $argv
   else
      if test -e (which mvn)
        eval (which mvn) $argv
      else
        echo "mvn executable not found"
      end
   end
end
