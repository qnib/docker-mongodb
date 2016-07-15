###### QNIBTerminal child
FROM qnib/d-syslog

ENV MONGODB_DIR=/data/db/
RUN apt-get install -y mongodb-server mongodb
VOLUME ["/data/db/"]
ADD etc/supervisord.d/*.ini /etc/supervisord.d/
ADD etc/consul.d/mongodb.json /etc/consul.d/
ADD opt/qnib/mongodb/bin/start.sh \
    opt/qnib/mongodb/bin/restore.sh \
    /opt/qnib/mongodb/bin/
ADD backup/ /backup/
