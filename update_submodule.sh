#!/bin/sh

git submodule update --remote --merge
git add .
git commit -m "Update submodule"
git push
