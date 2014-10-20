function utf2xml -d "Convert given utf text file to ascii with html entities"
   cat $argv | php -R 'echo htmlentities($argn);echo "\n";'
end
