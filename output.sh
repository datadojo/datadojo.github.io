if hash markdown 2>/dev/null; then

    for f in *.md; do
        markdown $f > "${f%.md}.html"
    done

else
    echo "Install markdown to run this script." >&2
    exit 1;
fi