#!/bin/bash

sudo docker run -v redismodVolume:/data --name apoloRedisModules -p 6379:6379 -d redislabs/redismod
