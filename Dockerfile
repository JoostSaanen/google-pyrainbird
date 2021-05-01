FROM ubuntu:18.04
RUN apt-get -y update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update -y
RUN apt-get install -y python3.7 build-essential python3-pip
WORKDIR /app
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
RUN pip3 install flask requests
COPY . /app
ENTRYPOINT ["python3"]
CMD ["api.py"]
