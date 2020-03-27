docker run --rm -it -v $PWD/conf/timidity.cfg:/etc/timidity/timidity.cfg -v $PWD/testio:/wrk timidity /wrk/bach-air-on-g-string.mid /wrk/bach-air-on-g-string.mp3 
#docker run --rm -it --entrypoint /bin/bash timidity

