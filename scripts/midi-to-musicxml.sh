### step 2: use MuseScore to convert midi to musicxml.  Requires MuseScore to be installed on system
set -euo pipefail

command -v mscore >/dev/null 2>&1 || { 
    echo >&2 "This script requires MuseScore.  Please try again after installing MuseScore and adding it to your PATH (eg: export PATH=\"\$PATH:/Applications/MuseScore 3.app/Contents/MacOS\")."
    exit 1 
}

line=$1
if [ -z "$line" ]; then
    echo >&2 "Please specify the file you'd like to convert."
    exit 1 
fi

output=${line%.*}.xml
mscore -o "$output" "$line"


