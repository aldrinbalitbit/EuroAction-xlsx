#!/bin/sh
# Remove generated README.md and tracks folder
rm -rf */*/{README.md,tracks}

# III
pushd 1
  for i in {1..16}; do
    pushd $i
      ./gen2track.py
    popd
  done
popd
