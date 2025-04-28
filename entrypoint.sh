#!/bin/bash

# Navigate to repo
cd /host/root/dockaya/dockaya

# Configure git user (optional if already configured)
git config --global user.name "filicodes"
git config --global user.email "nimeshadls8@gmail.com"

# Set remote URL with GitHub token
git remote set-url origin https://${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}@github.com/filicodes/dockaya.git

# Pull latest (optional)
git pull origin main

# Make empty commit and push
git commit --allow-empty -m "Container restarted at $(date)"
git push origin main

# Then open a bash shell
exec bash

