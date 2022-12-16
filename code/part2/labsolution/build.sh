/bin/rm -rf output
export JMODS=$JAVA_HOME/jmods

jlink -p $JMODS:. --add-modules com.agiledeveloper.client --launcher fortuneapp=com.agiledeveloper.client/com.agiledeveloper.user.Client --output output

./output/bin/java --list-modules | wc -l
java --list-modules | wc -l

./output/bin/java -m com.agiledeveloper.client/com.agiledeveloper.user.Client 

./output/bin/fortuneapp


