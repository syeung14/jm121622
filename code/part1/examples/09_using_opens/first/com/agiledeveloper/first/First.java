package com.agiledeveloper.first;

public class First {
  public String getInfo() {
    return "This is First running in the " + getClass().getModule();
  }

  public Helper getHelper() {
    return new com.agiledeveloper.stuff.HelperImpl();
  }
}

