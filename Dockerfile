FROM python:3.8-slim

MAINTAINER Christian Hentschel <mail@chentschel.de>

# Ignore APT warnings about not having a TTY
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    ffmpeg && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade youtube-dl==2021.06.06

ENTRYPOINT ["youtube-dl"]
CMD ["--help"]
