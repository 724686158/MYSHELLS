docker rm -f "mongo"
docker run --restart=always --name "mongo" -v /mongodb/db20170611/:/data/db -p 27017:27017 -d daocloud.io/library/mongo:3.4.2 --smallfiles
