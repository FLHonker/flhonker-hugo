#/bin/bash
echo "\033[0;32mDeploying updates to GitHub...\033[0m"
des="./public"
msg="rebuilding site `date`"
if [ $# -eq 2  ]
    then msg="$1"
fi

# Build the project.
hugo -t beautifulhugo # if using a theme, replace by `hugo -t <yourtheme>`
hugo-algolia --config algolia.yaml

# commit project master
git add -A
git commit -m "$msg"
git push origin master

cp -r public/* $des
# Go To Public folder
cd $des

# Add algolia search index
grep -v '"content":' algolia.json>flhonker-hugo.json
rm -f algolia.json

# public
# Add changes to git.
git add -A

# Commit changes.
git commit -m "$msg"

# Push source and build repos.
git push origin master

cd ../

# Update algolia index
# python3 hugo_algolia.py ALGOLIA_API_KEY="fa0222a12d4979dee33b5ddd9b791436"
