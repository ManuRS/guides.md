# JULIA INSTALL

## 1. Download julia
https://julialang.org/downloads/
Command (WARNING, update URL!):
```
wget --no-check-certificate https://julialang-s3.julialang.org/bin/linux/x64/1.2/julia-1.2.0-linux-x86_64.tar.gz
```

## 2. Uncompress
```
tar xvfz julia-1.2.0-linux-x86_64.tar.gz
rm -f julia-1.2.0-linux-x86_64.tar.gz
```

## 3. Install

### Option A) Create symbolic
```
sudo ln -s julia-1.2.0/bin/julia julia
```
### Option B) export PATH (add to .bashrc)
```
export PATH="/home/$USER/julia-1.2.0/bin:$PATH"
```
