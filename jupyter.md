# Jupyter notebooks

## Access from everywhere
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
echo "c.NotebookApp.allow_origin = '*'" >> jupyter_notebook_config.py
echo "c.NotebookApp.allow_remote_access = True" >> jupyter_notebook_config.py
```

## SSL for encrypted communication (Local)
```
cd ~/.jupyter/
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout mykey.key -out mycert.pem
echo "c.NotebookApp.keyfile = u'/complete/path/mykey.key'" >> jupyter_notebook_config.py
echo "c.NotebookApp.certfile = u'/complete/path/mycert.pem'" >> jupyter_notebook_config.py
```

## SSL for encrypted communication (Let's encrypt)
```
Seguir instrucciones de:
https://certbot.eff.org/
Tras crear los certificados es necesario añadir a la crontab que renueva los certificados:
Copia al jupiter para que pueda usarlos
```

## Launch
```
nohup jupyter-notebook > salida_jupyter.txt &
```
