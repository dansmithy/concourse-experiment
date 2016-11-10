#!/bin/sh

+x

ls bar-binary
ls foo-binary

cp foo-binary/foo-build.txt foobar-output/foobar-build.txt
cat bar-binary/bar-build.txt >> foobar-output/foobar-build.txt
