/bin/rm -rf output

mkdir -p output/lib

mkdir -p output/classes
javac -d output/classes `find first -name *.java`
jar -c -f output/lib/first.jar --module-version 1.2.3 -C output/classes .
/bin/rm -rf output/classes

mkdir -p output/classes
javac -d output/classes -p output/lib `find second -name *.java`
jar -c -f output/lib/second.jar -C output/classes .
/bin/rm -rf output/classes

jar -d -f output/lib/first.jar

echo "the version info is in the metadata, but it is really only a glorified timestamp at this time"

