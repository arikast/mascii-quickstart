### step 1: compile mascii into midi
set -euo pipefail

GITROOT=$(git rev-parse --show-toplevel)
MASCII_JAR="$GITROOT"/bin/mascii-*.jar

SRC_DIR="$1"
if [ -z "$SRC_DIR" ]; then
    echo >&2 "Please specify the file or dir you'd like to convert."
    exit 1 
fi

### -c (--colocate) flag means to output the midi file into the same dir as the mascii source file
### -r (--recurse) flag means to recursively find and process files named *.mascii by default
### -e (--extension) if your source file names end with something other than "mascii", for example if they end in "txt" then you can add this: -e txt
java -jar $MASCII_JAR -c -r $SRC_DIR

