#!/bin/bash

if hash markdown 2>/dev/null; then

    for f in *.md; do
        if [[ $f != "README.md" ]]; then
            markdown $f > "${f%.md}.html"
        fi
    done

else
    echo "Install markdown to run this script." >&2
    exit 1;
fi