#/bin/bash

url=$1
srctype=$2

mkdir downloads

wget -U "Mozilla/5.0" http://download.h2os.com/OnePlus7Pro/MP/OnePlus7ProHydrogen_21.H.28_OTA_028_all_2007240037_b03998cd3afb4bb7.zip -O downloads/temp.zip
./zip2img.sh downloads/temp.zip
mkdir system
mount cache/system.img system
./make.sh system $srctype AB

ls -ln out/
