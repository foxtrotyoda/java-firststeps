# Example #2 - Own package compiled into a .jar with `maven`
---

[« home](../../README.md)

## Prerequisites

Check if `Java` is installed [click here](../../JAVA.md).

## Command-line path

From project root change directory as follows:

```bash
cd 01-command-line/example03/
cd hello                        # this is maven project
pwd
```

you should see something like... 

```bash
../java-firststeps/01-command-line/example03/hello
```
## Contents

Structure of the code somewhat [differs from previous example](../example03/README.md)
in order to comply with requirements of 'maven' project structures.
Main difference is that `pom.xml` is now your **manifest.txt** on steroids.
and this time we build **two jar files** one for test, one for distribution (explained later).
 
#### Structure of the package

Package contains `manifest.txt` and two class files `Hello` and `Console`.

```
  hello/
     pom.xml
     bin/              <--- posssible dependencies
     target/           <--- this is where you find yout JARs 
     src/
       test/           <--- JUnit tests
       main/
          java/
            org/
              democode/
                  mine/
                     Console.java
                     Hello.java
```

#### Contents of the `pom.xml`

Main class (equivalent of `Main-Class` in the manifest earlier)
is now specified inside XML file

```xml
  <mainClass>org.democode.mine.HelloMaven</mainClass>
```

The `XPath` for this value is `//project/build/plugins/plugin/configuration/manifes/mainClass`.

#### the build

In order to initiate the build execute:

```bash
mvn clean package
```

or you can use prepared `bash` script wrapping the build process:

```bash
./purge-and-build.sh
```
Artefacts generated are to be find in `/target/*.jar`

#### the jar - running it

Emerging `helloWorld.jar` can be called using `java` command:

```bash
java -jar target/helloWorld.jar --help --flag=false
```
and display:

```bash
+-----------------+
|  Hello Maven!   |
+-----------------+


Passed 2 command-line arguments: 
1) --help
2) --flag=false
```

[« back home](../../README.md)
