#!/bin/bash
set -e
trap 'exit_status=$?' EXIT
exit_status=0

if [ -z "$1" ]; then
  echo "Usage: $0 <base64-encoded-script>"
  exit 1
fi

echo "$1" | base64 -d > script.sh
chmod +x script.sh

echo "{\"message\": \"Running script.sh\"}"

./script.sh

exit $exit_status
