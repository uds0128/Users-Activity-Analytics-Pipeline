FROM ubuntu:latest

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install python3 python3-pip zip -y && \
    pip install pyodbc kaggle &&\
    mkdir -p ~/.kaggle

COPY kaggle.json /root/.kaggle/kaggle.json
COPY init.sh /init.sh

CMD ["sh", "/init.sh"]