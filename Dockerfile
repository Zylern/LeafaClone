FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
COPY run.sh requirements.txt testwatermark.jpg /app/
COPY lazyleech /app/lazyleech/
RUN apt update && apt install -y --no-install-recommends python3 python3-pip ffmpeg git mediainfo aria2 file && apt-get -y install tzdata && rm -rf /var/lib/apt/lists/*
RUN pip3 install -r /app/requirements.txt
CMD ["bash","/app/run.sh"]

