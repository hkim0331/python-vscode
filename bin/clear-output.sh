#!/bin/sh
for i in $@; do
  if [ ${i##*.} = 'ipynb' ]; then
    jupyter nbconvert --clear-output $i
  fi
done
