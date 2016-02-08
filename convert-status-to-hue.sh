#!/bin/bash

set -ex

if [ "$(cat pipeline-status/failing-builds.json)" = "[]" ]; then
	echo "{\"config\": {\"on\": \"true\", \"hue\": 25500, \"sat\": 254, \"bri\": 254, \"alert\": \"none\"}}" > hue-config-output/hue-config.json
else 
	echo "{\"config\": {\"on\": \"true\", \"hue\": 0, \"sat\": 254, \"bri\": 254, \"alert\": \"lselect\"}}" > hue-config-output/hue-config.json
fi
