@rem ======================
@rem Settings for riesling1
@rem ======================


set BBS_DEBUG=0

set BBS_NODE_HOSTNAME=riesling1
set BBS_USER=biocbuild
set BBS_RSAKEY=D:\biocbuild\.BBS\id_rsa
set BBS_WORK_TOPDIR=D:\biocbuild\bbs-3.13-data-experiment
set BBS_R_HOME=D:\biocbuild\bbs-3.13-bioc\R
set BBS_NB_CPU=12
set BBS_CHECK_NB_CPU=16

set BBS_STAGE2_MODE=multiarch
set BBS_STAGE4_MODE=multiarch
set BBS_STAGE5_MODE=multiarch

@rem riesling1 does know how to resolve malbec2 so we use its IP address
set BBS_CENTRAL_RHOST=172.29.0.4
set BBS_MEAT0_RHOST=172.29.0.4
set BBS_GITLOG_RHOST=172.29.0.4

@rem Source tarballs produced during STAGE3 are BIG and won't be propagated
@rem so we don't need to push them to the central builder.
set DONT_PUSH_SRCPKGS=1



@rem Shared settings (by all Windows nodes)

set wd0=%cd%
cd ..
call config.bat
cd %wd0%
