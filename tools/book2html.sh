#! /bin/bash

# book2html.sh
# book2html.sh usage: from guts/tools, invoke:
#     book2html.sh xxx.md
#  This will convert src/book/xxx.md to html and put it in web/out/xxx.html

filename=${1##*/}
fnroot=${filename%.*}
outFile=../web/out/book/$fnroot.html

echo Converting src/$1 to $outFile ...
echo -n "	md -> html ..."
cp ../web/partial/book.top.html $outFile
node toHTML.js ../src/book/$1 >> $outFile
cat ../web/partial/book.bot.html >> $outFile
echo done.

echo -n "	copying assets ..."
cp ../src/book/images/* ../web/out/book/images/
cp ../web/css/* ../web/out/book/css/

echo done.
