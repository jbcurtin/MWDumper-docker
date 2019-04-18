#!/bin/sh

# Example:
# docker run -v $PWD/enwiki-sql:/sql -v $PWD/enwiki-dump:/dumps
#   mwdumper /app/run.sh enwiki-20190320-pages-meta-current27.xml-p53163462p54663462.bz2

java -jar /app/mwdumper.jar --format=mysql:1.5 /dumps/$1 > /sql/$1.sql
