#!/bin/bash

LEGPARSER=$HOME/github/flammie/leg-ape-ud/legproc.py
cat $@ | egrep -v '^#!' | apertium -d . krl-morph |\
    python $LEGPARSER --not-rules apertium-krl.krl.leg
