#!/bin/bash
set -euo pipefail

( cd mascii && ./build.sh)
( cd musescore && ./build.sh)
( cd timidity && ./build.sh)


#ensure idempotency
grep mascii-funcs.sh $HOME/.bash_profile > /dev/null || echo -e "\nsource $PWD/all/mascii-funcs.sh" >> $HOME/.bash_profile
