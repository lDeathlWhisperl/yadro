docker run --rm -v my_volume:/data -v $(pwd):/host ubuntu sh -c "cp /host/init.sh /data/; cp /host/yadro_hello.c /data/"
docker build -t my_image .
