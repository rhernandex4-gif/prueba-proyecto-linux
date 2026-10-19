#!/bin/bash

echo "------------------------------------------------------------"
echo "                     REPORTE  DEL  SISTEMA                  "
echo "------------------------------------------------------------"


echo "FECHA Y HORA ACTUAL:"
date '+%d/%m/%Y  %H:%M:%S'

echo ""
echo "NOMBRE DEL HOST:"
hostname

echo ""
echo "NUMERO DE USUARIOS CONECTADOS"
who | wc -l

echo ""
echo "ESPACIO LIBRE EN EL DISCO PRINCIPAL"
df -h / | awk 'NR==2 {print $4}'

echo ""
echo "MEMORIA RAM DISPONIBLE"
free -h | awk '/Mem:/ {print $7}'


echo ""
echo "NUMERO DE USUARIOS CONTENEDORES DOCKER ACTIVOS:"
docker ps -q | wc -l

echo "-------------------------------------------------------------"


