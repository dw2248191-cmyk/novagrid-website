#!/bin/bash
set -e
cd "$(dirname "$0")"

echo "Cleaning up any stale git locks..."
rm -f .git/index.lock .git/HEAD.lock .git/index.lock.bak .git/HEAD.lock.bak

echo "Setting GitHub remote..."
if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin https://github.com/dw2248191-cmyk/novagrid-website.git
else
  git remote add origin https://github.com/dw2248191-cmyk/novagrid-website.git
fi

echo "Staging and committing..."
git add -A
git commit -m "Publish: NY/NJ services, mobile nav fix, contact page cleanup" || echo "(Nothing new to commit, continuing...)"

echo "Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "Done. Repo pushed to https://github.com/dw2248191-cmyk/novagrid-website"
