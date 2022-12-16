/bin/rm -rf output

mkdir -p output/lib

mkdir -p output/classes
javac -d output/classes `find softdrink -name *.java`
jar -c -f output/lib/softdrink.jar -C output/classes .
/bin/rm -rf output/classes

mkdir -p output/classes
javac -d output/classes -p output/lib `find client -name *.java`
jar -c -f output/lib/client.jar -C output/classes .
/bin/rm -rf output/classes

mkdir -p output/classes
javac -d output/classes -p output/lib `find cococola -name *.java`
jar -c -f output/lib/cococola.jar -C output/classes .
/bin/rm -rf output/classes

mkdir -p output/classes
javac -d output/classes -p output/lib `find pepsico -name *.java`
jar -c -f output/lib/pepsico.jar -C output/classes .
/bin/rm -rf output/classes

java -p output/lib -m client/com.agiledeveloper.client.Client

