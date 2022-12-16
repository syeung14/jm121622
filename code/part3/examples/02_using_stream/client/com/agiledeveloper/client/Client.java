package com.agiledeveloper.client;

import com.agiledeveloper.softdrink.Softdrink;
import java.util.*;

public class Client {
  public static void main(String[] args) {
    System.out.println("getting softdrinks...");

    ServiceLoader.load(Softdrink.class)
      .stream()
      //.peek(provider -> System.out.println(provider.type()))
      .map(provider -> provider.get())
      .map(softdrink -> softdrink.getName() + " --- " + softdrink.getSize())
      .forEach(System.out::println);
  }
}

