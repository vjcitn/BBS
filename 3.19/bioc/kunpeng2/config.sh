#!/usr/bin/env bash
# ===================================
# Settings for kunpeng2 (Linux ARM64)
# ===================================

#set -x  # print commands and their arguments as they are executed

export BBS_DEBUG="0"

export BBS_NODE_HOSTNAME="kunpeng2"
export BBS_USER="biocbuild"
export BBS_WORK_TOPDIR="/home/biocbuild/bbs-3.19-bioc"
export BBS_R_HOME="/home/biocbuild/R/R-4.4-devel-2023.11.02"
export R_LIBS="$BBS_R_HOME/site-library"

# kunpeng2 has 32 logical CPUs.
export BBS_NB_CPU=25
export BBS_BUILD_NB_CPU=16
export BBS_CHECK_NB_CPU=22
export BBS_EXTRA_CHECK_OPTIONS="--no-vignettes"

export BBS_PRODUCT_TRANSMISSION_MODE="none"

# Central build node is nebbiolo1 at DFCI.
export BBS_CENTRAL_ROOT_URL="http://155.52.207.165"

# Source tarballs produced during STAGE3 won't be propagated so
# we don't need to make them available to the central builder.
export DONT_PUSH_SRCPKGS="1"

# Shared settings (by all Unix nodes).

wd0=$(pwd)
cd ..
. ./config.sh
cd "$wd0"
