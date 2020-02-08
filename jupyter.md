# Jupyter Lab / Notebook

The steps are the same for Jupyter Lab or Notebook.

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
1. Entrar en:
```
https://certbot.eff.org/
```
2. Seguir las instrucciones
```
Esta guía asume que
- Se selecciona "None of the above" en la lista de servidores inicial
- En el paso 3 se elige "No, I need to keep my web server running"
```
3. Tras esto se habrán creado los certificados y la tarea para su renovación automática
```
Disclaimer: aunque hay un crontab creada en /etc/cron.d/certbot
su texto ya nos indica que bajo systemd es inutil

Bajo systemd la encontraremos con "systemctl show certbot.timer"
```
4. Indicar donde se encontraran los certificados (revisa las opciones A y B para sustituir /complete/path)
```
cd ~/.jupyter/
echo "c.NotebookApp.keyfile = u'/complete/path/mykey.key'" >> jupyter_notebook_config.py
echo "c.NotebookApp.certfile = u'/complete/path/mycert.pem'" >> jupyter_notebook_config.py
```
4. Opción A, indicar las ruta directas. Ejemplo en debian 9:

```
/etc/letsencrypt/live/NAME/privkey.pem    ->  mykey.key  en este tutorial
/etc/letsencrypt/live/NAME/fullchain.pem  ->  mycert.pem en este turorial
```
4. Opción B, la opción anterior requiere que el servidor corra con sudo. Podemos optar por una alternativa que lo evite:
```
Copiar los certificados a la carpeta de jupyter con una tarea programada:
sudo crontab -e
0 5 * * 1 cp /etc/letsencrypt/live/NAME/privkey.pem /home/USER/.jupyter/mykey.key
0 5 * * 1 cp /etc/letsencrypt/live/NAME/fullchain.pem /home/USER/.jupyter/mycert.pem
```
* Guía tentativa: podría tener errores o estar falta de información

## Launch
```
nohup jupyter-notebook > salida_jupyter.txt &
```

## Plots
```
conda install nodejs
conda install ipympl
jupyter labextension install @jupyter-widgets/jupyterlab-manager
jupyter labextension install jupyter-matplotlib
jupyter nbextension enable --py widgetsnbextension
```
Restart you Jupyter, and include in the code:
```
%matplotlib widget
```
