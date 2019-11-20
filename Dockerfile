FROM python:3.7-slim

ENV VERSION=1.0.20191022103248

RUN apt update -y && \
    apt install -y \
    build-essential \
    libltdl7 && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install cwltool==$VERSION

CMD ["tail", "-f", "/dev/null"]
