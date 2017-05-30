docker build -t kin-server .
docker stop kinserver
docker rm -v kinserver
docker run -d --name kinserver -p 3456:3456 --env-file kin.env kin-server
docker logs -f kinserver
