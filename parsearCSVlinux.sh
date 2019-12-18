#!/bin/bash
while IFS=, read -r field1 field2 field3
do
    echo "$field1"
done < muestra100curada.csv
