FROM python:3.7-alpine
WORKDIR /app

COPY . /app

RUN apt update -y
RUN apt-get install docker-compose -y
RUN pip install -r requirements.txt

EXPOSE 8080 8081 5432 5050

CMD ["docker-compose", "up", "-d", "docker-compose.yaml"]
CMD ["python3", "app.py"]
