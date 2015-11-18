#!/bin/bash

if [ -n "$PASSWORD" ]; then
    cat /web_server.conf > ~/.log.io/web_server.conf 
    sed -i "s/PASSWORD/$PASSWORD/g" ~/.log.io/web_server.conf
    /usr/bin/supervisord
else
    /usr/bin/supervisord
fi