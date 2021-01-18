#!/bin/bash
echo -n "" > ./package.log
clear && echo -e "---------------------------------"
echo -e "			Tar Graphics					 "
echo -e "			(C) Rowan C						 "
echo -e "Licensed under Apache license 2.0"
echo -e "---------------------------------"
nodeInst() { echo -e "Node.JS is not installed, install it please." && exit 127; }
npmInst() { echo -e "NPM is not installed, or node.JS is\'nt installed properly." && exit 127; }
shellPackageLog() { npm i shelljs &> ./package.log && echo -e "Package output can be found at $(pwd)/package.log" || exit 126; }
electronPackageLog() { npm i -D electron &> ./package.log && echo -e "Package output can be found at $(pwd)/package.log" || exit 126; }
echo -n "Node.JS: "
node -v || nodeInst
echo -n "NPM: "
npm -v || npmInst
echo -e $(pwd)
npm list --depth=0 | grep electron || electronPackageLog
npm list --depth=0 | grep shelljs || shellPackageLog
npm start
