#!/usr/bin/env bash

## check if the host name is resolvable
##

IP_FOUND=$(ping -c1 $HOSTNAME | head -n 1 | grep -Eo "[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}")

FOUND=$(python -c "import socket;print str(socket.gethostbyaddr('${IP_FOUND}')[1]).find('$(hostname)')")

rc=0

if [[ "$FOUND" == "-1" ]]
then
        echo "ERROR: hostname resolving is not correct."
        rc=1
else
        echo "OK: hostname resolving is correct"
fi

exit $rc
