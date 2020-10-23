#!/bin/sh

git add .
git commit -m "changes"
git push
ssh athena.dialup.mit.edu "./update_website.sh"
