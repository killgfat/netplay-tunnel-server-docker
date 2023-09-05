FROM python:alpine3.18
EXPOSE 55435
WORKDIR /app
RUN apk update && apk add git && \
    git clone https://github.com/libretro/netplay-tunnel-server.git && \
    mv /app/netplay-tunnel-server/* /app
    
ENTRYPOINT ["/usr/local/binpython3","-OO"]
CMD ["/app/retroarch_tunnel_server.py"]
