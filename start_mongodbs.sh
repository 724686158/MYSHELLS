docker rm -f "mongo"
docker run --restart=always --name "mongo" -v /mongodb/:/data/db -p 172.16.38.169:27017:27017 -d daocloud.io/library/mongo:3.4.2 --smallfiles
