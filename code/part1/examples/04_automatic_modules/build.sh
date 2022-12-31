/bin/rm -rf output

mkdir -p output/lib

mkdir -p output/classes
javac -d output/classes `find first -name *.java`
jar -c -f output/lib/first.jar -C output/classes .
/bin/rm -rf output/classes

mkdir -p output/classes
javac -d output/classes -p output/lib \
  `find second -name *.java`
# javac -d output/classes -classpath output/lib/first.jar \
  # `find second -name *.java`
jar -c -f output/lib/second.jar -C output/classes .
/bin/rm -rf output/classes

echo "running the code in the modulepath"
java -p output/lib -m second/com.agiledeveloper.second.Second
# java -p output/lib -m com.agiledeveloper.thesecond/com.agiledeveloper.second.Second

echo 
jar -d -f output/lib/first.jar
jar -d -f output/lib/second.jar
echo 

echo "Traditional code when run in the modulepath belongs to an automatic module"

echo "automatic means that Java elevates the code into a module automatically based on some conventions"

# mv output/lib/first.jar output/lib/foo.jar
echo "moved first to foo, and running in the modulepath"
# java -p output/lib -m second/com.agiledeveloper.second.Second

echo "By default, the name of the automatic module is the name of the jar - not a great idea but that is the default behavior"
