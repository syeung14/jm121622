package com.agiledeveloper.second;

import com.agiledeveloper.first.First;
import com.agiledeveloper.first.Helper;
import java.lang.reflect.Method;

public class Second {
  public String getInfo() {
    return "This is Second running in the " + getClass().getModule();
  }

  public static void main(String[] args) throws Exception {
    System.out.println("starting...");

    Second second = new Second();
    System.out.println(second.getInfo());

    First first = new First();
    System.out.println(first.getInfo());

    Helper helper = first.getHelper();
    System.out.println(helper);

    System.out.println(helper.add(1, 2));

    //com.agiledeveloper.stuff.HelperImpl h = null; //ERROR, not visible

    Method method = helper.getClass().getMethod("secret");
    System.out.println(method);

    method.invoke(helper); //opens allows this at runtime
  }
}

