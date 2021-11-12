#!/bin/bash

# locate some directories, so we can run this script anywhere we are
cd "$(dirname $0)"
SCRIPT_DIR="${PWD}"
cd ..
TOP="${PWD}"
TOP_PATCHES=$TOP/patches_aosp_riscv/aosp

# Note: based off tag android-12.0.0_r3

PATH_REPO=frameworks/base
PATH_DES_REPO=$TOP/$PATH_REPO
PATH_SRC_REPO=$TOP_PATCHES/$PATH_REPO

cp -f $PATH_SRC_REPO/packages/CtsShim/Android.bp $PATH_DES_REPO/packages/CtsShim/Android.bp
cp -f -r $PATH_SRC_REPO/packages/CtsShim/apk/riscv64/ $PATH_DES_REPO/packages/CtsShim/apk

