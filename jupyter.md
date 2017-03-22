# Jupyter notebooks

## Access from every where
```
jupyter notebook --generate-config
python
Python>> from notebook.auth import passwd
Python>> passwd()
Python>> ## Enter your pass and then copy the 'sha1:---'
Python>> exit()
cd ~/.jupyter/
echo "c.NotebookApp.password = u'sha1:---'" >> jupyter_notebook_config.py
echo "c.NotebookApp.port = 1234" >> jupyter_notebook_config.py
echo "c.NotebookApp.ip = '*'" >> jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> jupyter_notebook_config.py
```

## Launch
```
nohup jupyter-notebook > salida_jupyter.txt &
```
