FROM python:3.9-slim

RUN apt-get update -y
RUN apt-get install curl wget procps vim net-tools -y
RUN wget -c https://github.com/envoyproxy/envoy/releases/download/v1.26.1/envoy-1.26.1-linux-x86_64 -O /usr/local/bin/envoy

RUN mkdir app
COPY deploy/ app/

RUN pip3 install -r app/requirements.txt
RUN chmod +x app/entrypoint.sh /usr/local/bin/envoy

WORKDIR /app
ENTRYPOINT ["/bin/bash","entrypoint.sh"]