#!/bin/bash

makepkg -rsc
sudo mv *.pkg.tar.zst /var/repo/local/
rm -rf mdsx-git*
makepkg --printsrcinfo >.SRCINFO
git commit -am "updated PKGBUILD"
git push
