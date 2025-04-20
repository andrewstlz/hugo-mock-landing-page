#!/bin/bash

# Check if correct number of args
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <build_dir> <github_username>/<repo>"
  exit 1
fi

BUILD_DIR=$1
REPO=$2

echo "Publishing $BUILD_DIR to GitHub Pages branch..."

# Make sure we're in the repo root
cd "$(git rev-parse --show-toplevel)"

# Save current branch name
CURRENT_BRANCH=$(git branch --show-current)

# Commit changes to main branch first
git add .
git commit -m "Update before publishing"

# Generate site (you've already run `hugo`)
hugo

# Push contents of build_dir to gh-pages branch
git worktree add -B gh-pages ../gh-pages-origin gh-pages
rm -rf ../gh-pages-origin/*
cp -r $BUILD_DIR/* ../gh-pages-origin/
cd ../gh-pages-origin
git add .
git commit -m "Publish to GitHub Pages"
git push origin gh-pages
cd ..
git worktree remove ../gh-pages-origin

# Switch back to original branch
git checkout $CURRENT_BRANCH

echo "✅ Successfully published!"
