#!/bin/bash

# locate some directories, so we can run this script anywhere we are
cd "$(dirname $0)"
SCRIPT_DIR="${PWD}"
cd ..
TOP="${PWD}"
TOP_PATCHES=$TOP/patches_aosp_riscv/aosp

# Note: based off tag android-12.0.0_r3

# frameworks/base
PATH_REPO=frameworks/base
PATH_DES_REPO=$TOP/$PATH_REPO
PATH_SRC_REPO=$TOP_PATCHES/$PATH_REPO

cp -f $PATH_SRC_REPO/packages/CtsShim/Android.bp \
      $PATH_DES_REPO/packages/CtsShim/Android.bp
cp -f -r $PATH_SRC_REPO/packages/CtsShim/apk/riscv64/ \
         $PATH_DES_REPO/packages/CtsShim/apk/

# packages/services/Car
PATH_REPO=packages/services/Car
PATH_DES_REPO=$TOP/$PATH_REPO
PATH_SRC_REPO=$TOP_PATCHES/$PATH_REPO

cp -f $PATH_SRC_REPO/cpp/computepipe/example/Android.bp \
      $PATH_DES_REPO/cpp/computepipe/example/Android.bp
cp -f -r $PATH_SRC_REPO/cpp/computepipe/example/lib_riscv64/ \
         $PATH_DES_REPO/cpp/computepipe/example/

cp -f $PATH_SRC_REPO/cpp/computepipe/tests/runner/graph/stubgraph/Android.bp \
      $PATH_DES_REPO/cpp/computepipe/tests/runner/graph/stubgraph/Android.bp
cp -f -r $PATH_SRC_REPO/cpp/computepipe/tests/runner/graph/stubgraph/riscv64/ \
         $PATH_DES_REPO/cpp/computepipe/tests/runner/graph/stubgraph/

# prebuilts/clang/host/linux-x8
PATH_REPO=prebuilts/clang/host/linux-x86
PATH_DES_REPO=$TOP/$PATH_REPO
PATH_SRC_REPO=$TOP_PATCHES/$PATH_REPO

cp -f $PATH_SRC_REPO/Android.bp \
      $PATH_DES_REPO/Android.bp
cp -f $PATH_SRC_REPO/soong/clangprebuilts.go \
      $PATH_DES_REPO/soong/clangprebuilts.go

PATH_DES_REPO=$TOP/$PATH_REPO/clang-r416183b1/lib64/clang/12.0.7/lib/linux
PATH_SRC_REPO=$TOP_PATCHES/$PATH_REPO/clang-r416183b1/lib64/clang/12.0.7/lib/linux


cp -f $PATH_SRC_REPO/libclang_rt.asan-riscv64-android.so $PATH_DES_REPO/
cp -f $PATH_SRC_REPO/libclang_rt.builtins-riscv64-android.a $PATH_DES_REPO/
cp -f $PATH_SRC_REPO/libclang_rt.fuzzer-riscv64-android.a $PATH_DES_REPO/
cp -f $PATH_SRC_REPO/libclang_rt.ubsan_minimal-riscv64-android.a $PATH_DES_REPO/
cp -f $PATH_SRC_REPO/libclang_rt.ubsan_minimal-riscv64-android.a.syms $PATH_DES_REPO/
cp -f $PATH_SRC_REPO/libclang_rt.ubsan_minimal-riscv64-android.so $PATH_DES_REPO/
cp -f $PATH_SRC_REPO/libclang_rt.ubsan_standalone-riscv64-android.so $PATH_DES_REPO/

cp -f -r $PATH_SRC_REPO/riscv64/ $PATH_DES_REPO/

