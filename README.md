# JavaFX Samples for Ceylon

The project contains some of the [JavaFX Samples][]
ported to the [Ceylon language][].

[Ceylon language]: http://ceylon-lang.org
[JavaFX Samples]: https://docs.oracle.com/javase/8/javafx/get-started-tutorial/get_start_apps.htm

## Requirements

This project requires Ceylon 1.3.2 and Java 8.

## Compiling

To compile the examples, type:

    ceylon compile

Or, simply open the project in IntelliJ.

## Running

To run an example, type:

    ceylon run example.javafx.xxxx

where `example.javafx.xxxx` is the module name of 
the example you wish to run.

Alternatively, select the example's `run()` method in
IntelliJ and 'Run' it.

## Assembling and running a fat jar

To assemble a "fat" jar, type:

    ceylon fat-jar example.javafx.xxxx

Then run it using:

    java -jar example.javafx.xxxx-1.0.0.jar

Alternatively, select the example's module descriptor in
IntelliJ, and 'Run ... with fat-jar'.