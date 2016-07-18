#!/bin/bash

if [ "X${MONGO_RESTORE}" != "X" ];then
   if [ "${MONGODB_TARGET}X" != "X" ] && [ -f "${MONGODB_DIR}/${MONGODB_TARGET}" ];then
      echo "> Skip restore, as the target '${MONGODB_DIR}/${MONGODB_TARGET}' is already there..."
      sleep 5
      exit 0
   elif [ -f ${MONGO_RESTORE} ];then
      tar xf ${MONGO_RESTORE} -C /tmp/
      mongorestore /tmp/dump/
   else
      echo "Sorry, the file '${MONGO_RESTORE}' does not exist"
      sleep 5
   fi
fi
