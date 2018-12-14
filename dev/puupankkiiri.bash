#!/bin/bash

LEGPARSER=$HOME/github/flammie/leg-ape-ud/legproc.py
file_id_diz=$(basename $@ | sed -e 's/.text//')
cat $@ | egrep -v '^#!' | apertium -d . krl-morph > $file_id_diz
python $LEGPARSER --not-rules apertium-krl.krl.leg -i $file_id_diz
