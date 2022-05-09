#!/bin/bash
echo 'what files do you want to add?'
read filevar
for staged in "$filevar"
do
	git add "$staged"
done

git status
echo 'are files ready to be commited? [y,n]'
read continue

if [ "$continue" = "y" ]
then
       echo 'commit message:'
       read messvar
       git commit -m "'$messvar'"
       git push
else 'commit canceled'
fi
