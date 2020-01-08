## refresh mascii syntax

## refresh jar
cd ../../mascii-parser/mascii2/
mvn -Dmaven.test.skip=true clean package
rm ../../mascii-quickstart/bin/*
cp target/mascii-*.jar ../../mascii-quickstart/bin/
