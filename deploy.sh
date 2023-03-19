#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Genterate file statis
hugo -t PaperMod # if using a theme, replace by `hugo -t <yourtheme>`

git config --global user.email "goodgamersz665@gmail.com"
git config --global user.name "Syrup"

git checkout -b page

cd public
echo "issyrup.tech" > CNAME
git add -A

msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push -u -f origin page

cd ..

git checkout -b master
git add -A
git commit -m "$msg"
git push -u -f origin master