#!/bin/bash
tr -s ' ' '\n' |\
    sed -e 's/$^/$\n^/g' |\
    egrep '^\^' |\
    egrep -v '/.*/' |\
    fgrep -v '*' |\
    tr -d '^$' |\
    awk -F '/' '{printf("%s:%s\tXXX\t;\n", $2, $1);}'
