#!/bin/bash

SOURCE_BRANCH="jekyll"
TARGET_BRANCH="master"

SOURCE_ROOT_LOCAL="$HOME/Repository/lechance.github.io/"
SOURCE_PATH_SITE="$SOURCE_ROOT_LOCAL_site/"

COMPILED_SITE_TMP="/tmp/jekyll/"
mkdir -p $COMPILED_SITE_TMP

# begin build
git checkout jekyll
git add . 
git commit -m "Updated at `date` with autodeploy script ..."
jekyll clean
jekyll build --source $SOURCE_ROOT_LOCAL --destination $COMPILED_SITE_TMP


# push to github

cd $SOURCE_ROOT_LOCAL
git checkout master
cp -rvf /tmp/jekyll/* ./

git add .
git commit -m "test deploy script"

git push origin master 

echo "deploy to github..."

git checkout jekyll

echo "print jekyll branch's status..."
git status

#clean
#rm -rf $COMPILED_SITE_TMP
