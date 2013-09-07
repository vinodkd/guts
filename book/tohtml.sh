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
cp ../html/top.html $outFile
node toHTML.js ../src/$1 >> $outFile
cat ../html/bot.html >> $outFile
echo done.

echo -n "	copying assets ..."
cp ../src/*.jpg ../out
cp ../html/*.css ../out

echo done.

cd ..
