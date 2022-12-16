import java.util.*;

public class Sample {
  public static void main(String[] args) {
    System.out.println(System.getProperty("java.version"));
  }
}

//We will first use Java 8
//mkdir bin
//javac -d bin Sample.java
//java -classpath bin Sample
//1.8.0_322

//We will not recompile the code, but will use this in a newer version
//of Java.

//java -classpath bin Sample
//19

//What worked before (almost) works still in the newer versions of
//Java.

