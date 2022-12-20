FROM python:3.6-alpine

COPY webapp-flask-bgcolor/. /opt/

WORKDIR /opt

RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["python", "app.py"]