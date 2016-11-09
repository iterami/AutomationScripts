#!/bin/sh

# Required arguments:
#   $1: Relative path to the root directory of the
#         repository you wish to modify.
#   $2: Name of the branch you wish to rename.
#   $3: New name of the renamed branch.
#
# Example: sh rename-branch.sh old-branch new-branch

# Check if at least 3 arguments were passed.
if [ $# -lt 3 ]
then
    echo 'Missing arguments: path old-branch new-branch'
    exit 2
fi

# Navigate to the repository root directory.
cd $1

# Rename the local branch.
git branch -m $2 $3

# Delete the old branch.
git push origin :$2

# Push to the remote to use the new branch.
git push --set-upstream origin $3