### step 2: use MuseScore to convert midi to mp3.  Requires MuseScore to be installed on system

command -v mscore >/dev/null 2>&1 || { 
    echo >&2 "This script requires MuseScore.  Please try again after installing MuseScore and adding it to your PATH (eg: export PATH=\"\$PATH:/Applications/MuseScore 3.app/Contents/MacOS\")."; exit 1; 
}

SRC_DIR="$1"
if [ -z "$SRC_DIR" ]; then
    echo >&2 "Please specify the file or dir you'd like to convert."
    exit 1 
fi

GITROOT=$(git rev-parse --show-toplevel)
SCRIPTS_DIR="$GITROOT/scripts"

find $SRC_DIR -name "*.mid" | while read line; do
    "$SCRIPTS_DIR"/midi-to-pdf.sh "$line"
    "$SCRIPTS_DIR"/midi-to-musicxml.sh "$line"
    "$SCRIPTS_DIR"/midi-to-mp3.sh "$line"
    "$SCRIPTS_DIR"/midi-to-png.sh "$line"
    "$SCRIPTS_DIR"/midi-to-svg.sh "$line"
done


