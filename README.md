# Ubuntu Desktop image on Scaleway

[![Travis](https://img.shields.io/travis/scaleway-community/scaleway-ubuntu-desktop.svg)](https://travis-ci.org/scaleway-community/scaleway-ubuntu-desktop)
[![Scaleway ImageHub](https://img.shields.io/badge/ImageHub-view-ff69b4.svg)](https://hub.scaleway.com/ubuntu-desktop.html)
[![Run on Scaleway](https://img.shields.io/badge/Scaleway-run-69b4ff.svg)](https://cloud.scaleway.com/#/servers/new?image=coming-soon)

Launch your Ubuntu Desktop servers on Scaleway in minutes.

<img src="http://upload.wikimedia.org/wikipedia/commons/4/4d/Ubuntu_15.04.png" width="500px" />

---
git clone https://github.com/scaleway/image-tools.git
git clone https://github.com/jordanliuhao/scaleway-ubuntu-desktop.git
cd image-tools
mktemp -d
make IMAGE_DIR=../scaleway-ubuntu-desktop EXPORT_DIR=/tmp/tmp.81ypngKpTC scaleway_image


