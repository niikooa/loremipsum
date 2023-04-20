#!/bin/bash

for file in *.txt
do
    echo "El archivo $file tiene $(wc -l < $file) líneas."
done