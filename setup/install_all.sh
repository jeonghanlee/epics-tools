#!/bin/sh
# run all the installation scripts in this folder

for i in install*.sh
do
    source $i
done
