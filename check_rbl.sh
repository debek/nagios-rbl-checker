#!/bin/bash

ip=$1
rc=0
iprev=`echo $1 | awk -F. '{print $4"."$3"." $2"."$1}'`
rbl="b.barracudacentral.org zen.spamhaus.org truncate.gbudb.net"

for h in $rbl ; do
        host $iprev.$h &>/dev/null && rc=2 && break
done

if [ $rc -eq 2 ] ; then
        echo "IP jest na spam liscie $h"
        exit $rc
else
        echo ok
        exit 0
fi
