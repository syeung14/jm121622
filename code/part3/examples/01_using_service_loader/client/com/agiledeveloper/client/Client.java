package com.agiledeveloper.client;

import com.agiledeveloper.softdrink.Softdrink;
import java.util.*;

public class Client {
  public static void main(String[] args) {
    System.out.println("getting softdrinks...");

    var softdrinks = ServiceLoader.load(Softdrink.class);

    for(var softdrink: softdrinks) {
      System.out.println(
        softdrink.getName() + " --- " + softdrink.getSize());
    }
  }
}

