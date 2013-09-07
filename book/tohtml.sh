#! /bin/bash

#tohtml.sh
# tohtml usage: from guts/book, invoke:
#     tohtml.sh xxx.md
#  This will convert src/xxx.md to html and put it in out/xxx.html

cd tools
filename=${1##*/}
fnroot=${filename%.*}
outFile=../out/$fnroot.html

echo Converting src/$1 to $outFile ...
echo -n "	md -> html ..."
cat ../out/top.html > $outFile
node toHTML.js ../src/$1 >> $outFile
cat ../out/bot.html >> $outFile
echo done.

echo -n "	copying jpgs ..."
cp ../src/*.jpg ../out
echo done.

cd ..
