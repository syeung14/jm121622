/bin/rm -rf output

mkdir -p output/lib

mkdir -p output/classes
javac -d output/classes `find first -name *.java`
jar -c -f output/lib/first.jar -C output/classes .
/bin/rm -rf output/classes

mkdir -p output/classes
javac -d output/classes -p output/lib `find second -name *.java`
jar -c -f output/lib/second.jar -C output/classes .
/bin/rm -rf output/classes

java -p output/lib \
  -m com.agiledeveloper.thesecond/com.agiledeveloper.second.Second

