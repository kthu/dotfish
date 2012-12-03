function mvn -d "Like mvn, but with color"
   if test -e ~/bin/mvnc
      ~/bin/mvnc
   else 
      /usr/bin/mvn
   end
end
