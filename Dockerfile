FROM docker.toolforge.io/public/ubuntu:22.04

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends python3 \
    && apt-get install -y --no-install-recommends python3-pip

WORKDIR /root

COPY main.py /root/
COPY requirements.txt /root/
COPY manifest.yml /toolforge/manifest.yml

RUN pip3 install -r requirements.txt

ENTRYPOINT [ "python3", "main.py" ]