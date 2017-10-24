FROM registry.lecaishui.com/busybox

ARG JOB_WS_URL=http://jenkins.lecaishui.com:8000/job/lecaishui-platform/ws

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


VOLUME ["/pzedudata/lecaishui-platform/lecaishui-application"]
