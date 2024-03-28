FROM python:alpine3.19


COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

ENV MY_PASS=12345

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8080

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
