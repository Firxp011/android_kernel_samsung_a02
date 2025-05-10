#!/bin/bash

cd ${KERNEL_ROOTDIR}
make -j$(nproc) O=out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y ${DEVICE_DEFCONFIG}
make -j$(nproc) KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y O=out \
	CC=${CLANG_ROOTDIR}/bin/clang \
	CLANG_TRIPLE=${ARM_ROOTDIR}/bin/arm-linux-gnueabi- \
	CROSS_COMPILE=${ARM_ROOTDIR}/bin/arm-linux-androidkernel-
