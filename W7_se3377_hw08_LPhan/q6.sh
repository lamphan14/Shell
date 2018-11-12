#!/bin/bash
for entry in *; do
if [[ -d $entry ]]; then
echo $entry
# $entry is a directory
fi
done