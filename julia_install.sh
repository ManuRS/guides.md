#!/bin/bash

# Check last Julia version in the web
julia_V=1.2   # Major version
julia_v=1.2.0 # Minor revision

# Download and uncompress 
wget --no-check-certificate https://julialang-s3.julialang.org/bin/linux/x64/$julia_V/julia-$julia_v-linux-x86_64.tar.gz
tar xvfz julia-$julia_v-linux-x86_64.tar.gz
rm -f julia-$julia_v-linux-x86_64.tar.gz

# Install
echo -e '\n# JULIA INSTALL'>> .bashrc
echo julia_v=$julia_v >> .bashrc
echo -e 'export PATH="/home/$USER/julia-$julia_v/bin:$PATH"' >> .bashrc

echo -e "\nDone.\nLogin again.\n"
exit
