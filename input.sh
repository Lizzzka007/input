#!/bin/bash
 mkdir $1
 cp config-couette.txt nsenx run.sh $1
 cd $1
 sed -i "s/cx = 192; cy = 128; cz = 128;/cx = $2; cy = $3; cz = $4;/" config-couette.txt
 sed -i "s/viscosity = 1.0 \/ 5600.0;/viscosity = 1.0 \/ $5;/" config-couette.txt
 sed -i "s/Richardson = 0.00;/Richardson = $6;/" config-couette.txt
 sed -i "s/ntasks=64/ntasks=$7/" run.sh
 sbatch run.sh
