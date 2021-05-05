#!/bin/bash
exec varnishd \
    -j unix,user=vcache \
    -F \
    -f ${VARNISH_CONFIG} \
    -s ${VARNISH_STORAGE} \
    -a ${VARNISH_LISTEN} \
    -a ${VARNISH_LISTEN_PROXY} \
    -p feature=+http2 \
    -T ${VARNISH_MANAGEMENT_LISTEN} \
    ${VARNISH_DAEMON_OPTS}
