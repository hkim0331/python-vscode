#!/bin/sh
for i in $@; do
  if [ ${i##*.} = 'ipynb' ]; then
    jupyter nbconvert --to python $i
  fi
done
