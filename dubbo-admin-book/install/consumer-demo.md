
# 示例消费者安装

安装:

```sh
wget http://code.alibabatech.com/mvn/releases/com/alibaba/dubbo-demo-consumer/2.4.1/dubbo-demo-consumer-2.4.1-assembly.tar.gz
tar zxvf dubbo-demo-consumer-2.4.1-assembly.tar.gz
cd dubbo-demo-consumer-2.4.1
```

配置:

```sh
vi conf/dubbo.properties
```

启动:

```sh
./bin/start.sh
tail -f logs/stdout.log
```

停止:

```sh
./bin/stop.sh
```

重启:

```sh
./bin/restart.sh
```

调试:

```sh
./bin/start.sh debug
```

系统状态:

```sh
./bin/dump.sh
```

总控入口:

```sh
./bin/server.sh start
./bin/server.sh stop
./bin/server.sh restart
./bin/server.sh debug
./bin/server.sh dump
```

标准输出:

```sh
tail -f logs/stdout.log
```
