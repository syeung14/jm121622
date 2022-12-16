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

mkdir -p output/classes
javac -d output/classes -p output/lib `find third -name *.java`
jar -c -f output/lib/third.jar -C output/classes .
/bin/rm -rf output/classes

echo "The compilation passes"

echo "thethird ---> thesecond"
echo "thesecond -(transitive)--> thefirst"

echo "thethird -x-> thefirst"

echo "use option 1 in general, especially if the dependency is third party and encapsulated"

echo "use option 2 if you are refactoring a ball of mud and moving
and reorganizing dependencies"


