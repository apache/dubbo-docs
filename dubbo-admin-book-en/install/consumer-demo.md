
# install demo consumer

install:

```sh
wget http://code.alibabatech.com/mvn/releases/com/alibaba/dubbo-demo-consumer/2.4.1/dubbo-demo-consumer-2.4.1-assembly.tar.gz
tar zxvf dubbo-demo-consumer-2.4.1-assembly.tar.gz
cd dubbo-demo-consumer-2.4.1
```

configuration:

```sh
vi conf/dubbo.properties
```

start:

```sh
./bin/start.sh
tail -f logs/stdout.log
```

Stop:

```sh
./bin/stop.sh
```

Restart:

```sh
./bin/restart.sh
```

Debug:

```sh
./bin/start.sh debug
```

System status:

```sh
./bin/dump.sh
```

General control entrance:

```sh
./bin/server.sh start
./bin/server.sh stop
./bin/server.sh restart
./bin/server.sh debug
./bin/server.sh dump
```

Stdout:

```sh
tail -f logs/stdout.log
```
