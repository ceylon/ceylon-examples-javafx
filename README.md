# JavaFX Samples for Ceylon

The project contains some of the [JavaFX Samples][]
ported to the [Ceylon language][].

[Ceylon language]: http://ceylon-lang.org
[JavaFX Samples]: https://docs.oracle.com/javase/8/javafx/get-started-tutorial/get_start_apps.htm

## Requirements

This project requires Ceylon 1.3.2 and Java 8. You do not
need to install Ceylon if you don't already have it installed.
The `ceylonb` command is self-installing.

To play with the samples in IntelliJ, you'll need to install
[Ceylon IDE for IntelliJ][].

[Ceylon IDE for IntelliJ]: https://ceylon-lang.org/documentation/1.3/ide/intellij/

## Compiling

To compile the examples, type:

    ./ceylonb compile

Or, simply open the project in IntelliJ.

## Running

To run an example, type:

    ./ceylonb run example.javafx.xxxx

where `example.javafx.xxxx` is the module name of 
the example you wish to run.

Alternatively, select the example's `run()` method in
IntelliJ and 'Run' it.

## Assembling and running a fat jar

To assemble a "fat" jar, type:

    ./ceylonb fat-jar example.javafx.xxxx

Then run it using:

    java -jar example.javafx.xxxx-1.0.0.jar

Alternatively, select the example's module descriptor in
IntelliJ, and 'Run ... with fat-jar'.