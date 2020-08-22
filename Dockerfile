FROM python:3.8-slim

RUN apt-get update \
&& apt-get install gcc libgtk2.0-dev -y \
&& apt-get clean

COPY requirements.txt /app/requirements.txt 

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app
COPY weights/last_yolov5s_results.pt /app/weights/

CMD 