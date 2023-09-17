FROM ubuntu:latest
LABEL authors="soo"

ENTRYPOINT ["top", "-b"]