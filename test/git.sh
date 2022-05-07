#!/bin/bash
git add .
echo 'commit message:'
read messvar
git commit -m "'$messvar'"
git push
