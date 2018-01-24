# Dependencies

## Necessary dependencies
JDK 1.5+ [^1]

## Default dependencies
use `mvn dependency:tree > dep.log`  command to analysis，Dubbo default depends on the following 3rd party libraries：

```
[INFO] +- com.alibaba:dubbo:jar:2.1.2:compile
[INFO] |  +- log4j:log4j:jar:1.2.16:compile 
[INFO] |  +- org.javassist:javassist:jar:3.15.0-GA:compile
[INFO] |  +- org.springframework:spring:jar:2.5.6.SEC03:compile
[INFO] |  +- commons-logging:commons-logging:jar:1.1.1:compile
[INFO] |  \- org.jboss.netty:netty:jar:3.2.5.Final:compile
```

All dependencies here are selected for the default configuration of the Dubbo, which are based on stability and performance considerations.

* log4j.jar and commons-logging.jar [^2]: It can be removed directly, and the log of the Dubbo itself automatically switches to the java.util.logging output of JDK. But if other 3rd party libraries, such as spring.jar, are indirectly dependent on commons-logging, they can't be removed.   
* javassist.jar [^3]: if `<dubbo:provider proxy="jdk" />` or `<dubbo:consumer proxy="jdk" />`，or `<dubbo:application compiler="jdk" />`， is not required.
* spring.jar [^4]: If you are using `ServiceConfig` and `ReferenceConfig` API calls, is not required.
* netty.jar [^5]: if `<dubbo:protocol server="mina"/>` or `<dubbo:protocol server="grizzly"/>`，Then change to mina.jar or grizzly.jar. If `<protocol name="rmi"/>`， is not required.

## Optinal dependencies
These dependencies  needs to be added to project manually，when you need them.

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

[^1]: In theory, Dubbo only depend on JDK, not depend on any 3rd party libs, you can finish logic by useing  JDK.
[^2]: Log output jar
[^3]: Bytecode generation
[^4]: Configuration parsing
[^5]: Network transmission
[^6]: JEE