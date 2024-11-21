#!/usr/bin/env zsh

# This script creates a model foo/bar for every foo/bar/Modelfile in the current directory.

set -ex

for x in `find . -type f -name Modelfile`
do
    x=`dirname "$x"`
    name=`echo $x | sed -e 's,^\./,,'`
    (cd "$x" && yammer create --name "$name" --modelfile "$(cat Modelfile)");
done
