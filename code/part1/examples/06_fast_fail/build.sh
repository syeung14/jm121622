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

echo "if we run in the classpath, we do not get fast fail"

java -classpath output/lib/second.jar com.agiledeveloper.second.Second

echo "The error happend midway as the program ran"
echo ""

echo "if we run in the modulepath, we do get fast fail"

/bin/rm -f output/lib/first.jar

java -p output/lib \
  -m com.agiledeveloper.thesecond/com.agiledeveloper.second.Second

