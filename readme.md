
# nginx 代理

docker run --name nginx-cors -p 8081:80 -e LOCATION_PATH="/" -e PROXY_PASS_ADDR="https://www.5gnlive.cn" --entrypoint /app/start.sh nginx-cors