#!/bin/sh

lsof -i :4000 | grep -c 4000 && kill -9 `lsof -i :4000|grep 4000|awk '{print $2}'`

bundle exec jekyll serve