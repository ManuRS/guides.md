# Anaconda installa guide

Download from https://www.continuum.io/downloads and install
 - Python 3 recommended

Now you have jupyter and spyder

 ```bash
jupyter notebook

spyder
```

## Installing the other python version (2.7)

To see your versions:

 ```bash
conda info --envs
```

Download other version:

 ```bash
conda create -n anaconda2 python=2.7 anaconda
```

 - anaconda2 is the future name
 - python=2.7 the version
 
To change version:

 ```bash
source activate anaconda2
```
