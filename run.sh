diamond makedb --in input/astral-scopedom-seqres-gd-sel-gs-bib-40-2.07.fa -d output/astral40
diamond dbinfo --db  output/astral40.dmnd
diamond getseq --db  output/astral40.dmnd

diamond blastp -q input/astral-scopedom-seqres-gd-sel-gs-bib-40-2.07.fa -d output/astral40 -o out.tsv --very-sensitive

diamond  blastp \
    -q ./input/astral-scopedom-seqres-gd-sel-gs-bib-40-2.07.fa \
    -d ./output/astral40  \
    -k 1000 \
    --id 80.0 \
    --sensitive \
    -e 1e-10 \
    -a ./output/test.align

diamond view -a output/test.align

diamond prepdb -d swissprot