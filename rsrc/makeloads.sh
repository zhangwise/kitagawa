#!/bin/sh
RSCPT=".sourceloads.R"
RSRC=`pwd`
cat << XXX > ${RSCPT}
#
#	!! autogenerated !!
#
#	${RSCPT}	
#	$0	`date`
#	`pwd`
#
XXX
ls ${RSRC}/*.R | awk '{printf("source(\"%s\")\n"),$0}' >> ${RSCPT}
