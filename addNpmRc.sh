#!/bin/bash

for file in ./packages/*; do

echo $file

cat $file/package.json | jsonc modify -n -p '["publishConfig"]' -v "{\"registry\":\"$1\"}" -f $file/package.json

done


