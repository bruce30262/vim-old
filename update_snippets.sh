#!/bin/sh

git submodule update --remote --merge
git add .
git commit -m "update vim-snippets"
git push
