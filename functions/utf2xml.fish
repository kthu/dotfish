function utf2xml -d "Convert utf text from stdin to ascii with html entities"
   cat $argv | php -R 'echo htmlentities($argn);echo "\n";'
end
