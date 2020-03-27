function mascii2midi() {
    local f=$1
    if [ -z "$f" ]; then
        echo "please specify a mascii file to convert"
        return
    fi

    local hostpardir=$(cd "$(dirname $f)"; pwd)
    local fname=$(basename $f)
    local wrkdir=/wrk-dir
    docker run --rm -v $hostpardir:$wrkdir mascii2 $wrkdir/$fname
}


function mascii2other() {
    local f=$1
    local ext=$2
    if [ -z "$f" ] || [ -z "$ext" ]; then
        echo "please specify a mascii file to convert"
        return
    fi

    local hostpardir=$(cd "$(dirname $f)"; pwd)
    local fname=$(basename $f)
    local wrkdir=/wrk-dir

    input=${fname%.*}.mid
    output=${fname%.*}.$ext

    mascii2midi $1 && docker run --rm -it -v $hostpardir:$wrkdir mscore-3 -o $wrkdir/$output $wrkdir/$input
}


function mascii2png() {
    mascii2other $1 png
}
function mascii2xml() {
    mascii2other $1 xml
}
function mascii2pdf() {
    mascii2other $1 pdf
}
function mascii2mp3() {
    mascii2other $1 mp3
}
