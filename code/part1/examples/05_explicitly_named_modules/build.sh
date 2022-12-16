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

echo "running the explicitly named modules from the classpath"
java -classpath output/lib/first.jar:output/lib/second.jar \
  com.agiledeveloper.second.Second

echo ""
echo "running the explicitly named modules from the modulepath"
java -p output/lib \
  -m com.agiledeveloper.thesecond/com.agiledeveloper.second.Second

echo "**ALL code running in the classpath belong to unnamed module - old and the explicitly named"

echo "explicitly named modules need exports packages on one side and requires modules on the other side"
