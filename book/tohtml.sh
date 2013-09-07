#! /bin/bash

#tohtml.sh
echo tohtml usage: from guts/book, invoke:
echo     tohtml.sh xxx.md
echo  This will convert src/xxx.md to html and put it in out/xxx.html

cd tools
filename=${1##*/}
fnroot=${filename%.*}
node toHTML.js ../src/$1 > ../out/$fnroot.html
cd ..
