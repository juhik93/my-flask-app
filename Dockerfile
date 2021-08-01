FROM ubuntu:16.04
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

WORKDIR /app

COPY /basic-flask-app/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY /basic-flask-app/. .

ENTRYPOINT [ "python" ]

CMD [ "routes.py" ]
