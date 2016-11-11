#!/bin/sh

source $1
source $2

if [[ $js_int -eq 1 && $api_int -eq 1 ]]
then
    echo "Both tests passed"
    exit 0;
fi;

echo "One or other tests failed js=$js_int api=$api_int"
exit 1;
