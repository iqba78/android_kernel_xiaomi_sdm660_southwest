export ARCH=arm64
export KBUILD_BUILD_USER=laptop
export KBUILD_BUILD_HOST=iqbal
export LD_LIBRARY_PATH="/home/zeus/clang/bin/../lib:$PATH"
make -C $(pwd) -j$(nproc) O=out santoni_defconfig
PATH="/home/zeus/clang/bin:${PATH}"
make -j$(nproc) O=out ARCH=arm64 CC=clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-gnu- CROSS_COMPILE_ARM32=arm-linux-gnueabi-
