#!/bin/sh

git submodule update --remote --merge
git add .
git commit -m "update submodule"
git push
