FROM ubuntu:latest

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install python3 python3-pip -y && \
    pip install faker pyodbc

COPY simulate.py /simulate.py

CMD ["/usr/bin/python3", "/simulate.py"]