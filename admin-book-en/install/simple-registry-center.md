# install Simple configuration center

Simple Registry has not been well tested, may have bug, cluster is not supported, not recommended to use in production environment

Install:

```sh
wget http://code.alibabatech.com/mvn/releases/com/alibaba/dubbo-registry-simple/2.4.1/dubbo-registry-simple-2.4.1-assembly.tar.gz
tar zxvf dubbo-registry-simple-2.4.1-assembly.tar.gz
cd dubbo-registry-simple-2.4.1
```

Configuration:

```sh
vi conf/dubbo.properties
```

Start:

```sh
./bin/start.sh
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

Command line [^1]:

```shell
telnet 127.0.0.1 9090
help
```

Or:

```sh
echo status | nc -i 1 127.0.0.1 9090
```

[^1]: Please refer to [Telnet command manual](https://dubbo.gitbooks.io/dubbo-user-book/content/references/telnet.html)
