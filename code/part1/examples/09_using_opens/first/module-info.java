module com.agiledeveloper.thefirst {
  exports com.agiledeveloper.first;
  opens com.agiledeveloper.stuff; //stuff is not visible at compile time, but may be used at runtime using reflection
}

