#!/bin/bash
# We can assume that the PWD is the repo dir

# Copy everything to out/
cp -r `find . -maxdepth 1 ! -name "out"` "out"

# Delete unused files
rm -f out/.gitignore
rm -rf out/deploy

# Add bower dependencies
cd out
bower install
cd ..
