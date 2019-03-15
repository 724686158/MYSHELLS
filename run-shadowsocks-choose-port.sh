echo "please input the port"
read port1
docker run -d --restart=always -p $port1:$port1 oddrationale/docker-shadowsocks -s 0.0.0.0 -p $port1 -k solitarius_love_crescent_4ever -m aes-256-cfb

