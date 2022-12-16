/bin/rm -rf output

mkdir -p output/lib

mkdir -p output/classes
javac -d output/classes `find first -name *.java`
jar -c -f output/lib/first.jar -C output/classes .
/bin/rm -rf output/classes

mkdir -p output/classes
javac -d output/classes -classpath output/lib/first.jar \
  `find second -name *.java`
jar -c -f output/lib/second.jar -C output/classes .
/bin/rm -rf output/classes

echo "running the code in the classpath as we did for so long"
java -classpath output/lib/first.jar:output/lib/second.jar \
  com.agiledeveloper.second.Second

echo "All code running in the classpath belong to one single unnamed module"
