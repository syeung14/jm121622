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

echo "The java from the JRE has these many modules"
java --list-modules | wc -l

echo "The java from the JRE with two of our own modules has these many modules"
java -p output/lib --list-modules | wc -l

echo ""
echo "we really don't need all those modules for our little program"
echo ""

echo "use jlink to create a stripped down binary for a particular architecture"
echo ""

export JMODS="$JAVA_HOME/jmods"

jlink -p $JMODS:output/lib \
  --add-modules com.agiledeveloper.thesecond \
  --launcher theutilapp=com.agiledeveloper.thesecond/com.agiledeveloper.second.Second \
  --output output/utilapp

echo ""

echo "we have out own precious little java"
echo ""
echo "our java only has these modules"
echo ""

./output/utilapp/bin/java --list-modules | wc -l

./output/utilapp/bin/java --list-modules 

echo ""
echo "run our precious java"
./output/utilapp/bin/java -m com.agiledeveloper.thesecond/com.agiledeveloper.second.Second

echo ""
echo "run our precious specialized binary we created for java"
./output/utilapp/bin/theutilapp

echo ""
echo "let us examine what we created"

ls output/utilapp
ls output/utilapp/bin
