#!/usr/bin/env bash
i=100
echo "Generating $i zip files recursively..."
# Create the first zip to start process without giving output
zip $i.zip final.zip >/dev/null
while [ $i -ge 1 ]; do
  # Do not generate output
  zip $((i - 1)).zip $i.zip >/dev/null
  rm $i.zip
  i=$((i - 1))
done
# Rename the zip file
mv $i.zip challenge.zip
echo "challenge.zip created successfully."
