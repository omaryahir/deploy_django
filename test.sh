echo "Escriba el nombre de la carpeta"
read carpeta_proyecto
if [ "$carpeta_proyecto" == "" ]; then
	echo "Debe escribir la carpeta del proyecto"
	echo "Proceso Cancelado"
	exit
fi
echo $carpeta_proyecto
