package com.agiledeveloper.pepsi;

import com.agiledeveloper.softdrink.Softdrink;

public class DietPepsi implements Softdrink {
  private int size;

  public DietPepsi(int size) {
    this.size = size;
  }

  public static DietPepsi provider() {
    return new DietPepsi(10);
  }

  public String getName() { return "Diet Pepsi"; }
  public int getSize() { return size; }
}

