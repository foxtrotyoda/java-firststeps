#!/usr/bin/env bash
JAVAON=`command -v java`

if [ -n "$JAVAON" ]; then
    java -jar mylittleant.jar $@ # last $@ passes all from bash to java class
else
    echo "Error: Java not installed!"
    exit 1
fi
