#!/bin/bash

/usr/bin/dev-gui-api &
/usr/bin/dev-gui-client &

tail -f /dev/null
