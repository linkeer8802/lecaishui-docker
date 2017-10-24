#!/bin/bash
datestr=`date +"%Y%m%d%H%M%S"`
#echo $datestr
docker build --no-cache --build-arg JOB_WS_URL=http://172.28.128.3:8000/job/lecaishui-platform/ws -t registry.lecaishui.com/lecaishui-webapp-code:v$datestr .
