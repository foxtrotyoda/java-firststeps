#!/usr/bin/env bash
JAVAON=`command -v java`

f [ -n "$JAVAON" ]; then
    java HelloWorld $@ # last $@ passes all from bash to java class
else
    echo "Error: Java not installed!"
    exit 1
fi
