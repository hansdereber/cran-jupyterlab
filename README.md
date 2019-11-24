# Jupyter with Docker Compose

This repository contains a simple docker-compose definition for launching the popular JupyterLab with a R backend.

## Setting the password
The default password is 'banana'.

You can define a password with the script ```generate_token.py -p S-E-C-R-E-T``` and generate SSL certificates as described below.
```
import IPython as IPython

hash = IPython.lib.passwd("S-E-C-R-E-T")
print(hash)
```

## Control the container:
* ```docker-compose up``` mounts the directory and starts the container
* ```docker-compose build``` builds the container
* ```docker-compose down``` destroys the container

## Loggin into JupyterLab
After starting the docker-compose stack, you can access the JupyterLab at http://localhost:8888.
