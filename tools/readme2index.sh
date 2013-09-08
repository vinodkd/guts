#! /bin/bash

# readme2index.sh
# copies over README.md as the index page on gh-pages

outFile=../web/out/index.html

echo -n Converting README.md to $outFile ...
cp ../web/partial/index.top.html $outFile
node toHTML.js ../README.md >> $outFile
cat ../web/partial/index.bot.html >> $outFile
echo done.
