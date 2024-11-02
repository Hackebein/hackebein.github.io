#!/bin/bash
rm -rf output.new
cp -a page output.new
xlog --build . --source output.new --custom_before_view ../page.parts/_header.md --custom_after_view ../page.parts/_footer.md --custom_css /fancy.css --sitename 'Hackebein' --sitemap.domain 'hackebein.de' --rss.domain 'hackebein.de' --og.domain 'hackebein.de' --twitter.username '@hackebein' --custom_head ../page.parts/_head.html
find output.new -name *.md -delete
find output.new -name *.md.pgp -delete
rsync -av --delete --checksum output.new/ output/
rm -rf output.new