#!/bin/bash
set -e

rm -rf output.new
cp -a page output.new
xlog --build . --source output.new --theme dark --custom.before_view ../page.parts/_header.md --custom.after_view ../page.parts/_footer.md --sitename 'Hackebein' --sitemap.domain 'hackebein.de' --rss.domain 'hackebein.de' --og.domain 'hackebein.de' --twitter.username '@hackebein' --custom.head ../page.parts/_head.html
find output.new -name *.md -delete
find output.new -name *.md.pgp -delete
rm -rf output.new/theme
rsync -av --delete --checksum output.new/ output/
rm -rf output.new
