# Example #2 - Own package compiled into a .jar file (with bash wrapper script)
---

[« home](../../README.md)

## Prerequisites

Check if `Java` is installed [click here](../../JAVA.md).

## Command-line path

From project root change directory as follows:

```bash
cd 01-command-line/example02/
pwd
```

you should see something like... 

```bash
../java-firststeps/01-command-line/example02
```
## Contents

I created a `Java` package called `org.democode.mine`, which is ordered using so-called `FQN` (fully qualified name).
Package contains two classess `Console` and `Hello` of which the latter is designated as `main`.
 
#### Structure of the package

Package contains `manifest.txt` and two class files `Hello` and `Console`.

```
  manifest.txt
  org/
     democode/
           mine/
              Console.java
              Hello.java
```

#### Contents of the manifest

The minimum requirements for `manifest.txt` requires only `Main-Class: ` to be named, and hence the following:
Also, manifest **must end** with a new line `\n` character.

```
Main-Class: org.democode.mine.Hello

```

#### The jar

`JAR` stands for `J`ava `AR`chive is a package file format for `Java` code and associated metadata and binary resources (eg. text, images, etc.) into one file for cross-systems distribution as `executable binaries`.
The `jar` files are also archives that include a `Java`-specific `manifest` (see above). 
They are built on the `ZIP` format and typically have `.jar` file extension.


In our case here we compile classes `explicitly` one after another:

```bash
# purge previously compiled if exist

rm org/democode/mine/Console.class
rm org/democode/mine/Hello.class

# compile your Java code

javac org/democode/mine/*.java

# build myprogram.jar 

rm myprogram.jar # purge old builds
jar cvfm myprogram.jar manifest.txt org/

```

Emerging `myprogram.jar` can be called using `java` command:

```bash
java -jar myprogram.jar --help --flag=false
```
or using `bash` wrapper again... 

```bash
./myprogram.sh --help --flag=false
```
to the same effect, displaying:

```

+-----------------+
|  Just a hello!  |
+-----------------+


Passed 2 command-line arguments: 
1) --help
2) --flag=false
```