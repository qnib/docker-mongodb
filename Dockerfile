###### QNIBTerminal child
FROM qnib/terminal:fd22

RUN dnf install -y mongodb-server mongodb && \
    mkdir -p /data/db/
ADD etc/supervisord.d/*.ini /etc/supervisord.d/
ADD etc/consul.d/mongodb.json /etc/consul.d/
ADD opt/qnib/mongodb/bin/restore.sh /opt/qnib/mongodb/bin/
ADD backup/ /backup/
