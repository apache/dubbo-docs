# Simple 注册中心安装

Simple Registry 没有经过严格测试，可能不健状，并且不支持集群，不建议用于生产环境。

安装:

```sh
wget http://code.alibabatech.com/mvn/releases/com/alibaba/dubbo-registry-simple/2.4.1/dubbo-registry-simple-2.4.1-assembly.tar.gz
tar zxvf dubbo-registry-simple-2.4.1-assembly.tar.gz
cd dubbo-registry-simple-2.4.1
```

配置:

```sh
vi conf/dubbo.properties
```

启动:

```sh
./bin/start.sh
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

命令行 [^1]:

```shell
telnet 127.0.0.1 9090
help
```

或者:

```sh
echo status | nc -i 1 127.0.0.1 9090
```

[^1]: 请参考 [Telnet 命令参考手册](https://dubbo.gitbooks.io/dubbo-user-book/content/references/telnet.html)
