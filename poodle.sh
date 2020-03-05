#!/bin/bash
#set -x

input=$1

if [[ $input =~ : ]]; then
  host=$input
else
  host=$input:443
fi

check="`echo 'x' | openssl s_client -connect ${host} -quiet -ssl3 2> /dev/null`"
if [ -z "${check}" ]; then
  echo "not vulnerable"
else
  echo "vulnerable"
fi
