FROM python:alpine3.18
EXPOSE 55435
WORKDIR /app
RUN apk update -y && apk add git -y && \
    git clone https://github.com/libretro/netplay-tunnel-server.git && \
mv /app/netplay-tunnel-server/* /app
    
ENTRYPOINT ["python3 -OO retroarch_tunnel_server.py retroarch_tunnel_server.ini"]
