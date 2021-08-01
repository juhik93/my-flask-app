FROM ubuntu:16.04
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt && \
    pip install Flask

COPY . .

CMD [ "python", "routes.py", "--host=0.0.0.0"]

