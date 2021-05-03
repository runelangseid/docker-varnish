#!/bin/bash
exec varnishd \
    -j unix,user=vcache \
    -F \
    -f ${VARNISH_CONFIG} \
    -s ${VARNISH_STORAGE} \
    -a ${VARNISH_LISTEN} \
    -a ${VARNISH_LISTEN_PROXY} \
    -T ${VARNISH_MANAGEMENT_LISTEN} \
    ${VARNISH_DAEMON_OPTS}
