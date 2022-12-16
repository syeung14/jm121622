package com.agiledeveloper.second;

import com.agiledeveloper.first.First;

public class Second {
  public String getInfo() {
    return "This is Second running in the " + getClass().getModule();
  }

  public static void main(String[] args) {
    System.out.println("starting...");

    Second second = new Second();
    System.out.println(second.getInfo());

    First first = new First();
    System.out.println(first.getInfo());
  }
}

