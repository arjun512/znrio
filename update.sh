#!/bin/bash
cd article;jekyll build  -d /www/znr/;cd ..
cd shop;jekyll build  -d /www/znr/shop;cd ..
cd product;jekyll build  -d /www/znr/product;cd ..

cd /www; ./push_znr.sh
