#!/bin/sh

set -e

WIREMOCK_ARGS="--port $WIREMOCK_PORT --root-dir $WIREMOCK_ROOT_DIR"

if [ "$WIREMOCK_VERBOSE" = "true" ]; then
    WIREMOCK_ARGS="$WIREMOCK_ARGS --verbose"
fi

if [ "$WIREMOCK_ENABLE_STUB_CORS" = "true" ]; then
    WIREMOCK_ARGS="$WIREMOCK_ARGS --enable-stub-cors"
fi

if [ "$1" = "java" ]; then
    "$@" $WIREMOCK_ARGS
else
    exec "$@"
fi

