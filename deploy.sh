#!/usr/bin/env sh

# abort on errors
set -e

# ensure all code is committed to avoid unexpected live code
if [ -n "$(git status -s)" ]; then
  echo 'ERROR: there must not be any untracked or changed file'
  echo 'Commit all your changes and try again'
  exit 1
fi

# build
npm run build

# git to target branch
git checkout gh-pages

# replace the content with the dist/
rm -rf $(git ls-tree --full-tree -r --name-only HEAD)
git checkout -- .gitignore
cp -Ra dist/* .

# add .nojekyll to bypass GitHub Page's default behavior
touch .nojekyll
# add CNAME for custom domain
echo "www.loureiro.me" > CNAME

# commit and push changes
git add .
git commit -am 'Deploy'
git push origin gh-pages

# go bach to the original branch
git checkout -