# Example #1
---

## Java is installed...

Validate that you have `java` and `javac` (compiler) installed by running:

```bash
java -version
javac -help
```

if it's missing run (`Ubuntu` and `Debian`):

```bash
sudo apt-get update
sudo apt-get install maven
```

then repeat the tests above

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


Hello World!


```
