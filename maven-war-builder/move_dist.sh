#!/bin/bash

# skopiruje veci z "dist" adresare do "maven-war-builder/src/main/webapp" adresare.
cd dist
tar -cvf - assets/ crossdomain.xml .htaccess index.html robots.txt | (cd ../maven-war-builder/src/main/webapp; tar -xf -)
