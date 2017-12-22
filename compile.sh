#!/bin/bash

if [ -d "$HOME/.cabal/bin" ] ; then
    PATH="$HOME/.cabal/bin:$PATH"
fi

pandoc -s 0*.md --pdf-engine=xelatex --variable mainfont="Brill" --bibliography all.bib --filter render.hs -o all.pdf
pandoc -s 0*.md --pdf-engine=xelatex --variable mainfont="Brill" --bibliography all.bib --filter render.hs -o all.html
