docker run -d -v /home/docker/registry:/var/lib/registry -p 5000:5000 --restart=always --privileged=true --name registry registry:latest
