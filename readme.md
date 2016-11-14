docker build -t jackkav/node-web-app-prod . 
docker run -p 49165:8080 -d -m "300M" --memory-swap "1G"  jackkav/node-web-app-prod
