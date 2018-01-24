# source code build

## checkout

checkout the lastest project source code via below comand:

```sh
git clone https://github.com/alibaba/dubbo dubbo
```

## branch

We apply master as the major branch for dev, and branch as the maintenance release. Tags for all versions can be checked via https://github.com/alibaba/dubbo/tags.

## building

Dubbo applies [maven](http://maven.apache.org) as the building tool.

Demands:

* Java above 1.5 version
* Maven version 2.2.1 or above    

below  `MAVEN_OPTS`should be configured before building:

```sh    
export MAVEN_OPTS=-Xmx1024m -XX:MaxPermSize=512m
```

build with below command:

```sh
mvn clean install
```

skip testing using below building command:

```sh
mvn install -Dmaven.test.skip
```

## building jar package of source code 

build Dubbo source code jar package with below command, which can debug Dubbo source code. 

```sh
mvn clean source:jar install -Dmaven.test.skip
```

## IDE support

use below command to generate IDE.

### Intellij Idea

```sh
mvn idea:idea
```

### eclipse

```sh
mvn eclipse:eclipse
```

importing into eclipse

first, a maven repository needs to be configured in eclipse. Click Preferences -> Java -> Build Path -> Classpath  `M2_REPO` is the environment variable poiting to local maven repository。 [^2]


Using below maven command as well: 

```sh
mvn eclipse:configure-workspace -Declipse.workspace=/path/to/the/workspace/
```

[^1]: view the source code through https://github.com/alibaba/dubbo 
[^2]: path under UNIX is ${HOME}/.m2/repository, path under Windows is C:\Documents and Settings\<user>\.m2\repository

