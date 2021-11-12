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

# prebuilts/clang/host/linux-x86
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

# prebuilts/runtime
PATH_REPO=prebuilts/runtime
PATH_DES_REPO=$TOP/$PATH_REPO
PATH_SRC_REPO=$TOP_PATCHES/$PATH_REPO

PATH_DES_REPO=$TOP/$PATH_REPO/mainline/conscrypt/apex
PATH_SRC_REPO=$TOP_PATCHES/$PATH_REPO/mainline/conscrypt/apex
cp -f $PATH_SRC_REPO/Android.bp $PATH_DES_REPO/
cp -f $PATH_SRC_REPO/com.android.conscrypt-riscv64.apex $PATH_DES_REPO/

PATH_DES_REPO=$TOP/$PATH_REPO/mainline/i18n/apex
PATH_SRC_REPO=$TOP_PATCHES/$PATH_REPO/mainline/i18n/apex
cp -f $PATH_SRC_REPO/Android.bp $PATH_DES_REPO/
cp -f $PATH_SRC_REPO/com.android.i18n-riscv64.apex $PATH_DES_REPO/

PATH_DES_REPO=$TOP/$PATH_REPO/mainline/i18n/test-exports
PATH_SRC_REPO=$TOP_PATCHES/$PATH_REPO/mainline/i18n/test-exports
cp -f $PATH_SRC_REPO/Android.bp $PATH_DES_REPO/
cp -f -r $PATH_SRC_REPO/android/riscv64/ $PATH_DES_REPO/android/

PATH_DES_REPO=$TOP/$PATH_REPO/mainline/platform/sdk
PATH_SRC_REPO=$TOP_PATCHES/$PATH_REPO/mainline/platform/sdk
cp -f $PATH_SRC_REPO/Android.bp $PATH_DES_REPO/
cp -f -r $PATH_SRC_REPO/android/riscv64/ $PATH_DES_REPO/android/

PATH_DES_REPO=$TOP/$PATH_REPO/mainline/runtime/apex
PATH_SRC_REPO=$TOP_PATCHES/$PATH_REPO/mainline/runtime/apex
cp -f $PATH_SRC_REPO/Android.bp $PATH_DES_REPO/
cp -f $PATH_SRC_REPO/com.android.runtime-riscv64.apex $PATH_DES_REPO/

PATH_DES_REPO=$TOP/$PATH_REPO/mainline/runtime/sdk
PATH_SRC_REPO=$TOP_PATCHES/$PATH_REPO/mainline/runtime/sdk
cp -f $PATH_SRC_REPO/Android.bp $PATH_DES_REPO/
cp -f -r $PATH_SRC_REPO/android/riscv64/ $PATH_DES_REPO/android/

PATH_DES_REPO=$TOP/$PATH_REPO/mainline/statsd/apex
PATH_SRC_REPO=$TOP_PATCHES/$PATH_REPO/mainline/statsd/apex
cp -f $PATH_SRC_REPO/Android.bp $PATH_DES_REPO/
cp -f $PATH_SRC_REPO/com.android.os.statsd-riscv64.apex $PATH_DES_REPO/

PATH_DES_REPO=$TOP/$PATH_REPO/mainline/tzdata/apex
PATH_SRC_REPO=$TOP_PATCHES/$PATH_REPO/mainline/tzdata/apex
cp -f $PATH_SRC_REPO/Android.bp $PATH_DES_REPO/
cp -f $PATH_SRC_REPO/com.android.tzdata-riscv64.apex $PATH_DES_REPO/

# packages/modules/ArtPrebuilt
PATH_REPO=packages/modules/ArtPrebuilt
PATH_DES_REPO=$TOP/$PATH_REPO
PATH_SRC_REPO=$TOP_PATCHES/$PATH_REPO
cp -f $PATH_SRC_REPO/Android.bp $PATH_DES_REPO/
cp -f $PATH_SRC_REPO/com.android.art-riscv64.apex $PATH_DES_REPO/
cp -f $PATH_SRC_REPO/com.android.art.debug-riscv64.apex $PATH_DES_REPO/
