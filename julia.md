# JULIA INSTALL

## 1. Download 

### Option A) From the webpage
https://julialang.org/downloads/

### Option B) From terminal
!!!! Check the last version and the change the variable
```
julia_v1=1.2   # Major version
julia_v2=1.2.0 # Minor revision

wget --no-check-certificate https://julialang-s3.julialang.org/bin/linux/x64/$julia_v1/julia-$julia_v2-linux-x86_64.tar.gz
```

## 2. Uncompress
```
tar xvfz julia-1.2.0-linux-x86_64.tar.gz
rm -f julia-1.2.0-linux-x86_64.tar.gz
```

## 3. Install

### Option A) Create symbolic
```
sudo ln -s /home/$USER/julia-1.2.0/bin/julia /usr/local/bin/julia
```
### Option B) Export PATH (add to .bashrc)
```
export PATH="/home/$USER/julia-1.2.0/bin:$PATH"
```
