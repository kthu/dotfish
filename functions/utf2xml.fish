function utf2xml -d "Convert utf text to ascii with html entities"
         perl -MHTML::Entities -ne 'print encode_entities($_)' $argv
end
