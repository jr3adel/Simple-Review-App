FROM python:3.9.13-slim-buster

LABEL maintainer_name="Saeed Adel " maintainer_email="sashsadel@gmail.com" 

WORKDIR / 

COPY ./requirements.txt /requirements.txt

RUN pip3 install -r requirements.txt

RUN mkdir /app

WORKDIR /app 

COPY . . 

RUN python manage.py makemigrations 

RUN python manage.py migrate

CMD python manage.py runserver 0.0.0.0:8000 


