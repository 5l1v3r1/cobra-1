#!/bin/bash
YELLOW="\033[1;33m"
ENDCOLOR="\033[0m"
clear
echo -e
echo -e $YELLOW"[ + ] Points [ + ]"$ENDCOLOR
echo "1. Author =	 	   Computer Users"
echo "2. Last/Modified By =	   Computer Users"
echo "3. Producer or Creator =   Software / OS Versions"
echo "4. Title = 		   Path Information"
echo "5. Creator = 	           Software / OS Versions"
echo "6. Mime = 		   Content Information"
echo "7. SVG =                   image/svg+xml; charset=us-ascii means XSS"
echo ""
read -p "Enter victim url: " victim
echo "$victim"
python3 cobra.py --wait=2 --download $victim
./exiftool *.pdf > pdfdata.txt
./exiftool *.svg > svgdata.txt
./exiftool *.doc > docdata.txt
./exiftool *.xls > xlsdata.txt
./exiftool *.xlsx > xslxdata.txt
./exiftool *.ppt > pptdata.txt
./exiftool *.pptx > pptxdata.txt
./exiftool *.csv > csvdata.txt
./exiftool *.rtf > rtfdata.txt
./exiftool *.zip > zipdata.txt
./exiftool *.rtf > rtfdata.txt
./exiftool *rar > rardata.txt
./exiftool *.tgz > tgzdata.txt
./exiftool *.gz > gzdata.txt
./exiftool *.xz > xzdata.txt
mkdir data
cp *.pdf ./data/
cp *.svg ./data/
cp *.doc ./data/
cp *.xls ./data/
cp *.xlsx ./data/
cp *.ppt ./data/
cp *.pptx ./data/
cp *.csv ./data/
cp *.rtf ./data/
cp *.tgz ./data/
cp *.gz ./data/
cp *.xz ./data/