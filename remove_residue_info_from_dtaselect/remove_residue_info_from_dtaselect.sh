#!/bin/bash

for file in "$@"; do
    backup=${file}.bak
    cp "${file}" "${backup}"
    cut -d$'\t' -f-15,18- "${backup}" > "${file}"
done
