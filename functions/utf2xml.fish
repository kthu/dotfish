function utf2xml -d "Convert utf text from stdin to ascii with html entities"
   set PERL_UNICODE S
   perl -MHTML::Entities -Mutf8 -ne 'print encode_entities($_)'
end
