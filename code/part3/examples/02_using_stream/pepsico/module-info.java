module pepsico {
  requires softdrink;

  provides com.agiledeveloper.softdrink.Softdrink with
    com.agiledeveloper.pepsi.Pepsi,
    com.agiledeveloper.pepsi.DietPepsi;
}

