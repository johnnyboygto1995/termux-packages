TERMUX_PKG_HOMEPAGE=https://github.com/termux/termux-exec
TERMUX_PKG_DESCRIPTION="An execve() wrapper to make /bin and /usr/bin shebangs work"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1:2.0.0

# FIXME: Fix urls
TERMUX_PKG_SRCURL=file:///home/builder/termux-packages/sources/termux-exec
TERMUX_PKG_SHA256=SKIP_CHECKSUM

#TERMUX_PKG_SRCURL=https://github.com/termux/termux-exec/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz
#TERMUX_PKG_SHA256=xxx

TERMUX_PKG_ESSENTIAL=true
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="TERMUX_EXEC_PKG__VERSION=${TERMUX_PKG_VERSION} TERMUX_EXEC_PKG__ARCH=${TERMUX_ARCH} \
TERMUX__NAME=${TERMUX__NAME} TERMUX__LNAME=${TERMUX__LNAME} \
TERMUX_APP__PACKAGE_NAME=${TERMUX_APP__PACKAGE_NAME} TERMUX_APP__DATA_DIR=${TERMUX_APP__DATA_DIR} \
TERMUX__ROOTFS=${TERMUX__ROOTFS} TERMUX__PREFIX=${TERMUX__PREFIX} \
TERMUX_ENV__S_ROOT=${TERMUX_ENV__S_ROOT} \
TERMUX_ENV__SS_TERMUX=${TERMUX_ENV__SS_TERMUX} TERMUX_ENV__S_TERMUX=${TERMUX_ENV__S_TERMUX} \
TERMUX_ENV__SS_TERMUX_APP=${TERMUX_ENV__SS_TERMUX_APP} TERMUX_ENV__S_TERMUX_APP=${TERMUX_ENV__S_TERMUX_APP} \
TERMUX_ENV__SS_TERMUX_API_APP=${TERMUX_ENV__SS_TERMUX_API_APP} TERMUX_ENV__S_TERMUX_API_APP=${TERMUX_ENV__S_TERMUX_API_APP} \
TERMUX_ENV__SS_TERMUX_ROOTFS=${TERMUX_ENV__SS_TERMUX_ROOTFS} TERMUX_ENV__S_TERMUX_ROOTFS=${TERMUX_ENV__S_TERMUX_ROOTFS} \
TERMUX_ENV__SS_TERMUX_CORE=${TERMUX_ENV__SS_TERMUX_CORE} TERMUX_ENV__S_TERMUX_CORE=${TERMUX_ENV__S_TERMUX_CORE} \
TERMUX_ENV__SS_TERMUX_CORE__TESTS=${TERMUX_ENV__SS_TERMUX_CORE__TESTS} TERMUX_ENV__S_TERMUX_CORE__TESTS=${TERMUX_ENV__S_TERMUX_CORE__TESTS} \
TERMUX_ENV__SS_TERMUX_EXEC=${TERMUX_ENV__SS_TERMUX_EXEC} TERMUX_ENV__S_TERMUX_EXEC=${TERMUX_ENV__S_TERMUX_EXEC} \
TERMUX_ENV__SS_TERMUX_EXEC__TESTS=${TERMUX_ENV__SS_TERMUX_EXEC__TESTS} TERMUX_ENV__S_TERMUX_EXEC__TESTS=${TERMUX_ENV__S_TERMUX_EXEC__TESTS} \
TERMUX_APP__NAMESPACE=${TERMUX_APP__NAMESPACE} \
TERMUX_APP__SHELL_ACTIVITY__COMPONENT_NAME=${TERMUX_APP__SHELL_ACTIVITY__COMPONENT_NAME} TERMUX_APP__SHELL_SERVICE__COMPONENT_NAME=${TERMUX_APP__SHELL_SERVICE__COMPONENT_NAME}"
