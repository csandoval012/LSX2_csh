#!/bin/bash

echo "chequea si oracle esta siendo ejecutado"
echo "instance name: $ORACLE_SID"
echo "Oracle Home: $ORACLE_HOME"
echo "Oracle Base: $ORACLE_BASE"

#ejemplo redireccion de datos

WRKDIR=`pwd`

OUTDIR=$WRKDIR/../misc

cp -v casa perro $OUTDIR/ > $OUTDIR/out.log 2> $OUTDIR/erorr.log

## Ejemplo de expresiones regulares

OBJETIVO=dhcpd.conf
SALIDA=clientes_ocupado.log

grep -v "#" $OUTDIR/$OBJETIVO | sed '/^\s*$/d' | grep fixed | cut -d " " -f2 | sed 's/;//' | cut -d "." -f4 > $SALIDA
