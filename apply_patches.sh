#!/bin/bash

if [ $# -eq 0 ] ; then
	echo "Usage: $0 <path_to_aosp>"
	exit
fi

TOP_DES=$(realpath $1)
if [ ! -d $TOP_DES ] ; then
	echo "Plese double check if \"$1\" is a valid folder path to AOSP source tree!"
	exit
fi
if [ ! -f $TOP_DES/build/make/envsetup.sh ] ; then
	echo "Plese double check if \"$1\" is a valid path to AOSP source tree!"
	exit
fi
#echo "destination path is: $TOP_DES"

cd "$(dirname $0)"
SCRIPT_DIR="${PWD}"
TOP_SRC="${PWD}/aosp"
#echo "source path is: $TOP_SRC"

# FIXME: have not handle the case that the file is a symbolic link
function apply_patches() {
    for file in `ls $1`
    do
        if [ -d $1"/"$file ] ; then
            if [ ! -d $2"/"$file ] ; then
                mkdir -p $2/$file
            fi
            apply_patches $1"/"$file $2"/"$file
        else
            cp $1/$file $2/$file
        fi
    done
}

apply_patches $TOP_SRC $TOP_DES

