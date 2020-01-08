### step 1: compile mascii into midi
set -euo pipefail
GITROOT=$(git rev-parse --show-toplevel)
$GITROOT/scripts/mascii-to-midi.sh "$GITROOT/examples"
