# JULIA INSTALL

## 1. Download 

### Option A) Web browser
https://julialang.org/downloads/

### Option B) Terminal
!!!! Check the last version and the change the variable
```
julia_V=1.2   # Major version
julia_v=1.2.0 # Minor revision
wget --no-check-certificate https://julialang-s3.julialang.org/bin/linux/x64/$julia_V/julia-$julia_v-linux-x86_64.tar.gz
```

## 2. Uncompress
```
tar xvfz julia-$julia_v-linux-x86_64.tar.gz
rm -f julia-$julia_v-linux-x86_64.tar.gz
```

## 3. Install

### Option A) Create symbolic link
```
sudo ln -s /home/$USER/julia-$julia_v/bin/julia /usr/local/bin/julia
```
### Option B) Export PATH (add to .bashrc)
!!!! Change $julia_v to the real number
```
export PATH="/home/$USER/julia-$julia_v/bin:$PATH"
```
