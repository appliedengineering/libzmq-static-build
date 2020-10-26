#!/bin/bash

curl -H "Accept: application/vnd.github.v3+json" \
-s "https://api.github.com/repos/zeromq/libzmq/releases/latest" \
| grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/'

