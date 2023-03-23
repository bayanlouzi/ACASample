docker build --no-cache -t bayanlouzi/writer -f 'Writer\Dockerfile' .
# docker run -d -p 80:80 --mount source=imagestorage,target=/app/images bayanlouzi/writer

docker build --no-cache -t bayanlouzi/reader -f 'Reader\Dockerfile' .
# docker run -d -p 82:80 --mount source=imagestorage,target=/app/images bayanlouzi/reader

docker push bayanlouzi/writer
docker push bayanlouzi/reader