#!/bin/bash

for file_path in files/*; do
    name=${file_path##*/}
    name=${name%.txt}
    first_letter="${name:0:1}"
    first_letter_lower="${first_letter,,}"
    
    mv "${file_path}" "${first_letter_lower}/"
done
