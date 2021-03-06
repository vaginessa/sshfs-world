#! /bin/sh
set -eu

ROOT=$PWD

mkdir -p build
cp -R src/openssl build/
mkdir -p prefix
mkdir -p trash
cd build/openssl

./Configure \
	no-shared \
	--prefix=$ROOT/trash \
	"${OS_COMPILER}"

make
make install_sw
mv $ROOT/trash/include/openssl $ROOT/prefix/include
