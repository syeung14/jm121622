module cococola {
  requires softdrink;

  provides com.agiledeveloper.softdrink.Softdrink with
    com.agiledeveloper.coke.Coke,
    com.agiledeveloper.coke.DietCoke;
}

