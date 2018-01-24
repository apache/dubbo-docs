# install Redis register center



Redis [^1] introductions, please refer to: [Redis application center manual](https://dubbo.gitbooks.io/dubbo-user-book-en/content/references/registry/redis.html)。

you need an origin Redis server only, and change `dubbo.registry.addrss` to `redis://127.0.0.1:6379` in `conf/dubbo.properties` this file exits in Provider and Consumer here[quick start](https://dubbo.gitbooks.io/dubbo-user-book/content/quick-start.html)

Redis configuration center cluster [^2] write multiple server in client side and read from a single server.

Install:

```sh
wget http://redis.googlecode.com/files/redis-2.4.8.tar.gz
tar xzf redis-2.4.8.tar.gz
cd redis-2.4.8
make
```

Configuration:

```sh
vi redis.conf
```

Start:

```sh
nohup ./src/redis-server redis.conf &
```

Stop:

```sh
killall redis-server
```

* Command line [^3]:

```sh
./src/redis-cli
hgetall /dubbo/com.foo.BarService/providers
```

Or: 

```sh
telnet 127.0.0.1 6379
hgetall /dubbo/com.foo.BarService/providers
```

[^1]: Redis is a high performance KV store server, please refer to: http://redis.io/topics/quickstart
[^2]: Support for version `2.1.0` and higher
[^3]: Please refer to: http://redis.io/commands