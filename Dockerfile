FROM python:bullseye
EXPOSE 55435
WORKDIR /app
RUN apt update && apt install -y wget git && \
    git clone https://github.com/libretro/netplay-tunnel-server.git && \
    
ENTRYPOINT ["python3 -OO retroarch_tunnel_server.py /app/retroarch_tunnel_server.ini"]
