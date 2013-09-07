#! /bin/bash

#tohtml.sh
# tohtml usage: from guts/book, invoke:
#     tohtml.sh xxx.md
#  This will convert src/xxx.md to html and put it in out/xxx.html

cd tools
filename=${1##*/}
fnroot=${filename%.*}
outFile=../out/$fnroot.html

echo -n Converting src/$1 to $outFile ...

cat ../out/top.html > $outFile
node toHTML.js ../src/$1 >> $outFile
cat ../out/bot.html >> $outFile

echo done.
cd ..
