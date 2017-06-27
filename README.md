# MYSHELLLS
平常写的一些SHELL脚本


push_image_into_privateRegistry.sh         将docker镜像push到docker仓库中
start_core_redis.sh                        开启核心redis数据库（带持久化）
start_mesos_master.sh                      启动mesos-master（需传zookeeper地址，端口2181）
start_mesos_agent.sh                       启动mesos-agent（需传zookeeper地址，端口2181）
start_mi_with_monitor                      （弃用）
start_redis.sh                             启动redis数据库
install_mesos_with_root.sh                 安装mesos（ubuntu14.04）
send_docker_image_by_SSH.sh                通过SSH服务发送
start_marathon.sh                          启动marathon
start_mi_manager.sh                        启动mi_manager
start_mongodbs.sh                          启动mongodb（支持副本）
start_registry.sh                          开启docker私有镜像库      
start_all.sh                               开启(zookeeper + mesos + marathon)
start_mi.sh                                启动mi
start_mysql.sh                             创建mysql容器
start_zookeeper.sh                         启动zookeeper服务
