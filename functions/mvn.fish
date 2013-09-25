function mvn -d "Like mvn, but with color"
   if command_exists mvnc
     eval (which mvnc) $argv
   else
      if command_exists mvn
        eval (which mvn) $argv
      else
        echo "mvn executable not found"
      end
   end
end
