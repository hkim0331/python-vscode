#!/bin/sh
for i in $@; do
  if [ `basename $i` = 'ipynb' ]; then
    jupyter nbconvert --clear-output $i
  fi
done
