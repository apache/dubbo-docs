# install Simple monitor center

## Step

install:

```sh
wget http://code.alibabatech.com/mvn/releases/com/alibaba/dubbo-monitor-simple/2.4.1/dubbo-monitor-simple-2.4.1-assembly.tar.gz
tar zxvf dubbo-monitor-simple-2.4.1-assembly.tar.gz
cd dubbo-monitor-simple-2.4.1
```

configuration:

```sh
vi conf/dubbo.properties
```

start:

```sh
./bin/start.sh
```

stop:

```sh
./bin/stop.sh
```

restart:

```sh
./bin/restart.sh
```

debug:

```sh
./bin/start.sh debug
```

system status:

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

```sh
telnet 127.0.0.1 7070
help
```

Or:

```sh
echo status | nc -i 1 127.0.0.1 7070
```

Visit:

```
http://127.0.0.1:8080
```

![/admin-guide/images/dubbo-monitor-simple.jpg](../sources/images/dubbo-monitor-simple.jpg)

## NOTICE
The failure of Simple Monitor will not effect on consumer and provider's running, therefore there would be no risk in production environment
Simple Monitor use disk to store statistics information, please focus on the limitation of your machine. Mount share disk is recommended if cluster is needed

Charts directory must be in `jetty.directory`, or it can not be accessed by web page.

[^1]: Please refer to [Telnet command reference manual](https://dubbo.gitbooks.io/dubbo-user-book/content/references/telnet.html)

