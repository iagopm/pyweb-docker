FROM ubuntu:18.04
ENTRYPOINT ["top", "-b"]
CMD ["-c"]
EXPOSE 8000

RUN apt update -y
RUN apt install net-tools -y
RUN apt install vim -y
RUN apt install curl -y
RUN apt install wget -y
RUN apt install git -y
RUN apt install python3 -y
RUN apt install python3-pip -y

RUN pip3 install psycopg2-binary
RUN pip3 install Django==3.0.3

RUN git clone https://github.com/iagopm/pyweb-docker.git /home/