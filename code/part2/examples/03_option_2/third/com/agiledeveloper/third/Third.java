package com.agiledeveloper.third;

import com.agiledeveloper.second.Second;
import com.agiledeveloper.first.First;

public class Third {
  public static void main(String[] args) {
    System.out.println("Starting third");

    Second second = new Second();
    System.out.println(second.getInfo());

    First first = new First();
    System.out.println(first.getInfo());
  }
}

