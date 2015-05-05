#!/bin/bash

if hash github-markup 2>/dev/null; then

    for f in *.md; do
        if [[ $f != "README.md" ]]; then
            github-markup $f > "${f%.md}.html"
        fi
    done

else
    printf "Install github-markup to run this script.\n\tgem install github-markup\n" >&2
    exit 1;
fi