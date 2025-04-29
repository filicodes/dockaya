#!/bin/bash

# Navigate to repo
cd /host/root/dockaya/dockaya

echo "exec 1"

# Configure git user (optional if already configured)
git config --global user.name "filicodes"
git config --global user.email "nimeshadls8@gmail.com"

echo "exec 2"

git branch -M main
echo "exec 3"
# Set remote URL with GitHub token
git remote set-url origin https://x-access-token:${GITHUB_TOKEN}@github.com/filicodes/dockaya.git

echo "exec 4"

git remote -v


# Make empty commit and push
git commit --allow-empty -m "Container restarted at $(date)"

echo "exec 5"

git push origin main


echo "exec 6"
# Then open a bash shell
exec bash

