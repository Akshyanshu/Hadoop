WC = load 'word_count.txt' as (lines:chararray);
use_tok = FOREACH WC GENERATE TOKENIZE(lines);
Dump use_tok;