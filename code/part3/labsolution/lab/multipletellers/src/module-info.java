module multipletellers {
  requires fortuneteller;

  provides com.agiledeveloper.fortuneteller.FortuneTeller with
    com.agiledeveloper.multipletellers.ReleaseTeller,
    com.agiledeveloper.multipletellers.ProcessTeller;
}