#!/usr/bin/env bash
# Run this to extract all zip files in the same directory with challenge.zip
i=0
cp challenge.zip $i.zip # Tricky solution to handle challenge.zip in the loop as well :)
while [ true ]; do
  # Do not print the output and break if any error happens so that
  # if there exists no more zip files matching the sequence, we can exit peacefully.
  unzip $i.zip > /dev/null || break
  rm $i.zip # Remove the old zip
  i=$(( i + 1 ))
done
echo "All files extracted"

