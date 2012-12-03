function mvn -d "Like mvn, but with color"
   if test -e ~/bin/mvnc
      ~/bin/mvnc $argv
   else 
      /usr/bin/mvn $argv
   end
end
