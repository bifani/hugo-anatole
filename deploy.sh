#!/bin/sh

# If a command fails then the deploy stops
set -e

# Build the project
echo
hugo # if using a theme replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public
echo
echo "Deploying updates to "`git config --local remote.origin.url`

# Add changes to git
echo
git add .

# Commit changes
echo
git commit -m "Rebuilding site $(date)"

# Push source and build repos
echo
git push origin master
