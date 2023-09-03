FROM python:alpine3.18
EXPOSE 55435
WORKDIR /app
COPY retroarch_tunnel_server* /app/
ENTRYPOINT ["python3 -OO retroarch_tunnel_server.py /app/retroarch_tunnel_server.ini"]
