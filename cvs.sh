#!/usr/bin/bash

len=$#

if [ $len -eq 0 ]; then
  echo "Usage: ./cvs.sh path/to/install/directory"
  exit
fi

script_dir=$(pwd)

CVS_dir=$1

# Download
cd $CVS_dir
wget https://ftp.gnu.org/non-gnu/cvs/source/stable/1.11.23/cvs-1.11.23.tar.gz
tar -xzf cvs-1.11.23.tar.gz
rm cvs-1.11.23.tar.gz
cd ./cvs-1.11.23

# Run a patch from
# https://boffinblogger.blogspot.com/2018/06/cvs-11123-fix.html
sed -i 's/getline /get_line /' lib/getline.{c,h}

# Configure and compile
./configure
make

# Add a symlink to the executable in the base directory.
ln -s src/cvs cvs

# Clean up
cd $script_dir
