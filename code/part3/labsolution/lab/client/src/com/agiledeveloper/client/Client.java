package com.agiledeveloper.client;

import com.agiledeveloper.fortuneteller.FortuneTeller;
import com.agiledeveloper.fortuneteller.GoodFortuneOnly;

import java.util.ServiceLoader;

public class Client {
  public static void main(String[] args) {
    System.out.println("Let's read some good fortune");

    ServiceLoader.load(FortuneTeller.class)
      .stream()
      .filter(provider -> provider.type().isAnnotationPresent(GoodFortuneOnly.class))
      .map(ServiceLoader.Provider::get)
      .map(FortuneTeller::tellFortune)
      .forEach(System.out::println);
  }
}
