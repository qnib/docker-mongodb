###### QNIBTerminal child
FROM qnib/u-syslog

ENV MONGODB_DIR=/data/db/
RUN apt-get install -y mongodb-server mongodb nmap
VOLUME ["/data/db/"]
ADD etc/supervisord.d/*.ini /etc/supervisord.d/
ADD etc/consul.d/mongodb.json /etc/consul.d/
ADD opt/qnib/mongodb/bin/start.sh \
    opt/qnib/mongodb/bin/restore.sh \
    /opt/qnib/mongodb/bin/
ADD backup/ /backup/
