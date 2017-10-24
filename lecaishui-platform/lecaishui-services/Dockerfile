FROM registry.lecaishui.com/busybox

ARG JOB_WS_URL=http://jenkins.lecaishui.com:8000/job/lecaishui-platform/ws

RUN wget -O usercenter-dubbo-provider.tar.gz $JOB_WS_URL/lecaishui-services/lecaishui-usercenter-service/target/usercenter-dubbo-provider.tar.gz \
    && wget -O courses-dubbo-provider.tar.gz $JOB_WS_URL/lecaishui-services/lecaishui-courses-service/target/courses-dubbo-provider.tar.gz \
    && wget -O cms-dubbo-provider.tar.gz $JOB_WS_URL/lecaishui-services/lecaishui-cms-service/target/cms-dubbo-provider.tar.gz \
    && wget -O admin-dubbo-provider.tar.gz $JOB_WS_URL/lecaishui-services/lecaishui-admin-service/target/admin-dubbo-provider.tar.gz \
    && mkdir -p /pzedudata/lecaishui-platform/lecaishui-services/usercenter-dubbo-provider /pzedudata/lecaishui-platform/lecaishui-services/courses-dubbo-provider \
    && mkdir -p /pzedudata/lecaishui-platform/lecaishui-services/cms-dubbo-provider /pzedudata/lecaishui-platform/lecaishui-services/admin-dubbo-provider \
    && tar -xzvf usercenter-dubbo-provider.tar.gz -C /pzedudata/lecaishui-platform/lecaishui-services/usercenter-dubbo-provider \
    && tar -xzvf courses-dubbo-provider.tar.gz -C /pzedudata/lecaishui-platform/lecaishui-services/courses-dubbo-provider \
    && tar -xzvf cms-dubbo-provider.tar.gz -C /pzedudata/lecaishui-platform/lecaishui-services/cms-dubbo-provider \
    && tar -xzvf admin-dubbo-provider.tar.gz -C /pzedudata/lecaishui-platform/lecaishui-services/admin-dubbo-provider \
    && rm -rf usercenter-dubbo-provider.tar.gz courses-dubbo-provider.tar.gz cms-dubbo-provider.tar.gz admin-dubbo-provider.tar.gz    


VOLUME ["/pzedudata/lecaishui-platform/lecaishui-services"]
