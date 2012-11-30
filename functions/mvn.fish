function mvn -d "Like mvn, but with color"
   if test -e ~/bin/mvc
      ~/bin/mvnc
   else 
      /usr/bin/mvn
   end
end
