#docker run --rm -it -v $PWD/testio:/testio mscore-3 -o /testio/test.xml /testio/test.mid
#docker run --rm -it -v $PWD/testio:/testio mscore-3 -o /testio/test.mp3 /testio/test.mid
docker run --rm -it -v $PWD/testio:/testio mscore-3 -o /testio/test.png /testio/test.mid
#docker run --rm -it --entrypoint /bin/bash mscore-3 
