#!/bin/bash

sudo docker run -v redisVolume:/data --name apoloRedis -p 6379:6379 -d redis