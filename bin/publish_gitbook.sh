#!/bin/bash
cd `dirname $0`
BIN_DIR=`pwd`
cd ..
DEPLOY_DIR=`pwd`
STATIC_TMP_DIR="~/gh-pages-tmp"

if [ ! -d ~/gh-pages-tmp ] ; then
    git clone -b gh-pages https://github.com/dubbo/dubbo-docs.git ~/gh-pages-tmp
fi

cd $DEPLOY_DIR/user-guide
gitbook build .
cp -rf ./_book/*  ~/gh-pages-tmp/user-guide
rm -rf ./_book

cd $DEPLOY_DIR/developer-guide
gitbook build .
cp -rf ./_book/*  ~/gh-pages-tmp/developer-guide
rm -rf ./_book

cd $DEPLOY_DIR/admin-guide
gitbook build .
cp -rf ./_book/*  ~/gh-pages-tmp/admin-guide
rm -rf ./_book

cd ~/gh-pages-tmp

filelist=`ls -1`
  for filename in $filelist ; do
    if [ -f $filename ] ; then
        echo "Filename ":$filename
        cp -rf ./$filename ~/gh-pages-tmp/
    elif [ -d $filename -a !$filename == "user-guide" -a !$filename == "developer-guide" -a !$filename == "admin-guide"] ; then
       cp -rf $filename/*  ~/gh-pages-tmp/
done

#git add .
#git commit -m 'MISC:auto publish'
#git push -u origin gh-pages

#cd ~
#rm -rf ~/dubbo-docs-gh-pages-tmp
