# install demo provider

install:

```sh
wget http://code.alibabatech.com/mvn/releases/com/alibaba/dubbo-demo-provider/2.4.1/dubbo-demo-provider-2.4.1-assembly.tar.gz
tar zxvf dubbo-demo-provider-2.4.1-assembly.tar.gz
cd dubbo-demo-provider-2.4.1
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


```sh
telnet 127.0.0.1 20880
help
```

Or:

```sh
echo status | nc -i 1 127.0.0.1 20880
```

[^1]: Please refer to [Telnet reference manual](https://dubbo.gitbooks.io/dubbo-user-book/content/references/telnet.html)