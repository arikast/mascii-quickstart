#!/bin/bash
set -euo pipefail

( cd mascii && ./build.sh)
( cd musescore && ./build.sh)
( cd timidity && ./build.sh)

echo "source $PWD/all/mascii-funcs.sh" >> $HOME/.bash_profile
