# 依赖

## 必须依赖
JDK 1.5+ [^1]

## 缺省依赖
通过 `mvn dependency:tree > dep.log` 命令分析，Dubbo 缺省依赖以下三方库：

```
[INFO] +- com.alibaba:dubbo:jar:2.1.2:compile
[INFO] |  +- log4j:log4j:jar:1.2.16:compile 
[INFO] |  +- org.javassist:javassist:jar:3.15.0-GA:compile
[INFO] |  +- org.springframework:spring:jar:2.5.6.SEC03:compile
[INFO] |  +- commons-logging:commons-logging:jar:1.1.1:compile
[INFO] |  \- org.jboss.netty:netty:jar:3.2.5.Final:compile
```

这里所有依赖都是换照 Dubbo 缺省配置选的，这些缺省值是基于稳定性和性能考虑的。

* log4j.jar 和 commons-logging.jar [^2]: 可以直接去掉，dubbo 本身的日志会自动切换为 JDK 的 java.util.logging 输出。但如果其它三方库比如 spring.jar 间接依赖 commons-logging，则不能去掉。   
* javassist.jar [^3]: 如果 `<dubbo:provider proxy="jdk" />` 或 `<dubbo:consumer proxy="jdk" />`，以及 `<dubbo:application compiler="jdk" />`，则不需要。
* spring.jar [^4]: 如果用 `ServiceConfig` 和 `ReferenceConfig` 的 API 调用，则不需要。
* netty.jar [^5]: 如果 `<dubbo:protocol server="mina"/>` 或 `<dubbo:protocol server="grizzly"/>`，则换成 mina.jar 或 grizzly.jar。如果 `<protocol name="rmi"/>`，则不需要。
    
## 可选依赖
以下依赖，在主动配置使用相应实现策略时用到，需自行加入依赖。

* mina: 1.1.7
* grizzly: 2.1.4
* httpclient: 4.1.2
* hessian_lite: 3.2.1-fixed
* xstream: 1.4.1
* fastjson: 1.1.8
* zookeeper: 3.3.3
* jedis: 2.0.0
* xmemcached: 1.3.6
* jfreechart: 1.0.13
* hessian: 4.0.7
* jetty: 6.1.26
* hibernate-validator: 4.2.0.Final
* zkclient: 0.1
* curator: 1.1.10
* cxf: 2.6.1
* thrift: 0.8.0
* servlet: 2.5 [^6]
* bsf: 3.1 [^6]
* validation-api: 1.0.0.GA [^6]
* jcache: 0.4 [^6]

[^1]: 理论上 Dubbo 可以只依赖 JDK，不依赖于任何三方库运行，只需配置使用 JDK 相关实现策略
[^2]: 日志输出包
[^3]: 字节码生成
[^4]: 配置解析
[^5]: 网络传输
[^6]: JEE