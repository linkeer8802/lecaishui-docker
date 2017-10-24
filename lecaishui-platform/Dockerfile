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

RUN wget -O lecaishui-website-app.war $JOB_WS_URL/lecaishui-application/lecaishui-website-app/target/lecaishui-website-app.war \
    && wget -O lecaishui-backend-app.war $JOB_WS_URL/lecaishui-application/lecaishui-backend-app/target/lecaishui-backend-app.war \
    && wget -O lecaishui-mobile-app.war $JOB_WS_URL/lecaishui-application/lecaishui-mobile-app/target/lecaishui-mobile-app.war \
    && wget -O lecaishui-orgmanage-app.war $JOB_WS_URL/lecaishui-application/lecaishui-orgmanage-app/target/lecaishui-orgmanage-app.war \
    && mkdir -p /pzedudata/lecaishui-platform/lecaishui-application/lecaishui-website-app/war/ROOT /pzedudata/lecaishui-platform/lecaishui-application/lecaishui-backend-app/war/ROOT \
    && mkdir -p /pzedudata/lecaishui-platform/lecaishui-application/lecaishui-mobile-app/war/ROOT /pzedudata/lecaishui-platform/lecaishui-application/lecaishui-orgmanage-app/war/ROOT \
    && unzip -o lecaishui-website-app.war -d /pzedudata/lecaishui-platform/lecaishui-application/lecaishui-website-app/war/ROOT \
    && unzip -o lecaishui-backend-app.war -d /pzedudata/lecaishui-platform/lecaishui-application/lecaishui-backend-app/war/ROOT \
    && unzip -o lecaishui-mobile-app.war -d /pzedudata/lecaishui-platform/lecaishui-application/lecaishui-mobile-app/war/ROOT \
    && unzip -o lecaishui-orgmanage-app.war -d /pzedudata/lecaishui-platform/lecaishui-application/lecaishui-orgmanage-app/war/ROOT \
    && rm -rf lecaishui-website-app.war lecaishui-backend-app.war lecaishui-mobile-app.war lecaishui-orgmanage-app.war    


VOLUME ["/pzedudata/lecaishui-platform"]