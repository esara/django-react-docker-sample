FROM  python:3.11-bullseye

ENV PYTHONUNBUFFERED=1

WORKDIR /api
 

COPY . .

RUN pip install django django-cors-headers

EXPOSE 8000