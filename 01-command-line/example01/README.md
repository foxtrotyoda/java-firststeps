# Example #1 - Single class to .java file
---

[« home](../../README.md)

## Prerequisites

Check if `Java` is installed [click here](../../JAVA.md).

## Command-line path

From project root change directory as follows:

```bash
cd 01-command-line/example01/
pwd
```

you should see something like... 

```bash
../java-firststeps/01-command-line/example01
```

## Compile the class

Compile single class using `javac` 

```bash
javac HelloWorld.class
```
This would result in generating `HelloWorld.java`.

## Run the class

To execute the class run following (Please note it is executed without `.class` suffix):

```bash
java HelloWorld
```
Result looks similar to this:

```bash

+-----------------+
|  Hello World!   |
+-----------------+

```

## Wrapping execution as bash commmand

Have a look inside the `helloworld.sh` bash script file. It invokes `java` and passes all parameters from command-line to the class.
Because the class is able to recognise the parameters and display them we can call it like that:

```bash
./helloworld.sh --param1=value1 --use-flag
```

which is equivalent of a raw call:

```bash
java HelloWorld --param1=value1 --use-flag
```

and should display:

```bash
+-----------------+
|  Hello World!   |
+-----------------+


Passed 2 command-line arguments: 
1) --param1=value1
2) --use-flag
```

[« back home](../../README.md)