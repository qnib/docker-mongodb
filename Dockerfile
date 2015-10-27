###### QNIBTerminal child
FROM qnib/terminal

RUN yum install -y mongodb-server && \
    mkdir -p /data/db/
ADD etc/supervisord.d/mongodb.ini /etc/supervisord.d/
ADD etc/consul.d/mongodb.json /etc/consul.d/
