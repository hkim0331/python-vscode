#!/bin/sh
for i in $@; do
  if [ `basename $i` = 'ipynb' ]; then
    jupyter nbconvert --to python $i
  fi
done
