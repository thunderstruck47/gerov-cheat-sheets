#!/usr/bin/env bash

for f in *.md
do
    echo "<link rel='stylesheet' href='style.css'>" > ${f/.md/.html}
    markdown $f >> ${f/.md/.html}
done
