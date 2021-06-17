#!/bin/sh
# 安装jekyll
  # sudo su ;jekyll gem install jekyll
#安装 bundle gem install bundler
# see: https://blog.csdn.net/chen_changying/article/details/88093559
rm -rf ./_site/
NAME=$1
echo $NAME
ID=`lsof -i tcp:4000`
echo $ID
echo "...start killed..."
for id in $ID
do
kill -9 $id
echo "...killed $id"
done
echo "...stop killed..."
bundle exec jekyll serve --host=0.0.0.0 --incremental
