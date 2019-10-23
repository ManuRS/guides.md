# Jupyter notebooks

## Access from everywhere
```
jupyter-notebook --generate-config

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
* Tras -days 365 hay que repetir el proceso

## SSL for encrypted communication (Let's encrypt)
1. Seguir instrucciones de:
```
https://certbot.eff.org/
```
2. Tras crear los certificados, añadir la crontab que los renueva automáticamente.
```
Modificar la ruta de la orden que nos de la página
```
3. Indicarle a jupyter donde se encuentran los certificados
```
cd ~/.jupyter/
echo "c.NotebookApp.keyfile = u'/complete/path/mykey.key'" >> jupyter_notebook_config.py
echo "c.NotebookApp.certfile = u'/complete/path/mycert.pem'" >> jupyter_notebook_config.py
```
* Guía tentativa: podría tener errores o estar falta de información

## Launch
```
nohup jupyter-notebook > salida_jupyter.txt &
```
