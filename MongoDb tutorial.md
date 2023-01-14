# MongoDb tutorial

## Docker image
With this command, it's possible to start mongoDb in a docker container

Create the network
```
> sudo docker network create myNetwork
```

Run MongoDb 
```
> sudo docker run \
    --name myMongoDbInstance \
    -p 27017:27017  \
    --volume /opt/mongoDb/:/data/db \
    --network myNetwork \
    --detach mongo
```