#!/bin/bash
pattern=content/*

cp README-BASE.md README.md

for file in $pattern
do
  printf '## %s\n' $(basename $file) >> README.md
  manubot cite --render --format=markdown $(tr '\n' ' ' < $file) >> README.md
  printf '\n\n' >> README.md
done
