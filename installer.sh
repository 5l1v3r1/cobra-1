!#/bin/bash
echo -e "y" | apt install python3-requests python3-yaml 
git clone https://github.com/exiftool/exiftool.git
cd exiftool
perl Makefile.PL
make
make test
make install
chmod u+x cobra.py
chmod u+x main.sh
echo "Seperate: python3 cobra.py --wait=2 --download https://www.target.com
echo "Automatic: ./main.sh
echo "Softwares Installed"
echo "Please make sure, python 3.6.6 is installed"