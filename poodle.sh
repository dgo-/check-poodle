#!/bin/bash
#set -x

host=$1

check="`echo 'x' | openssl s_client -connect ${host} -quiet -ssl3 2> /dev/null`"
if [ -z "${check}" ]; then
  echo "not vulnerable"
else
  echo "vulnerable"
fi
