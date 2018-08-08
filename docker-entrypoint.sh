#!/bin/sh

# To disable warning libdc1394 error: Failed to initialize libdc1394
ln -s /dev/null /dev/raw1394

envtpl thumbor.conf.tpl  --allow-missing --keep-template

if [ -n "$LOG_LEVEL" ]; then
    LOG_PARAMETER="-l $LOG_LEVEL"
fi

if [ "$1" = 'thumbor' ]; then
    echo "Starting thumbor server on port $PORT..."
    exec thumbor \
        --port=$PORT \
        --conf=thumbor.conf \
        $LOG_PARAMETER
fi

exec "$@"
