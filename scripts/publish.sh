#!/bin/sh

rm -rf dist
cp -r src dist

origin_url=$(git remote get-url origin)
branch_name=$(basename $(git symbolic-ref --short refs/remotes/origin/HEAD))
cd dist
git init
git add -A
git commit -m "Initial commit"
git remote add origin $origin_url
git push -uf origin $branch_name
