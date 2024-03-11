# Ejercicio docker

## Descripción

Son contenedores docker con los siguientes servicios:	
- 2 servidores web que muestren una página editada sencilla y se consumen por el puerto 8555.
- 1 pequeño proxy para balancear el tráfico entre los 2 servidores web y recibir el tráfico por http(puerto 80).


## Pre-requisitos

Se debe de descargar este repositori, tener instalado docker en el sistema y configurado el mismo. Si usa una distribución de Linux, debe configurarlo para que un usuario que no sea root, pueda ejecutar los comandos. Sino, se debe añadir "sudo" al principio de todos los comandos.

## Despliegue

Para desplegar los contenedores, se deben de ejecutar los siguientes comandos:

```bash
docker build -t page1 -f ./page1.Dockerfile .
docker build -t page2 -f ./page2.Dockerfile .
docker build -t lb -f ./lb.Dockerfile .
docker network create t2o
docker run -d --network t2o --network-alias page1 page1
docker run -d --network t2o --network-alias page2 page2
docker run -d --network t2o --network-alias t2o -p 8080:80 lb
```
