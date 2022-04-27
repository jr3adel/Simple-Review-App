FROM alpine

LABEL maintainer="sashsadel@gmail.com"

COPY . /src

WORKDIR /src

RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["python","./manage.py"]


