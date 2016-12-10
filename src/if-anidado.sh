#!/bin/bash

errorlog="$0.err"

# La salida estándard de error estará redireccionada al archivo if-then.sh.err
if cp archivo1.ext archivo1.ext.bck 2> $errorlog
then
  echo "El archivo1.txt fue correctamente respaldado..."
  echo "Eliminado archivo original"
  # Ejemplo de un "if" anidado, una condición contenida dentro de otra...
  if rm archivo1.txt
  then
    echo "El archivo original fue elimidado correctamente"

